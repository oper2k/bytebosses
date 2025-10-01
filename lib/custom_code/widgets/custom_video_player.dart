// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import "package:community_testing_ryusdv/backend/schema/structs/index.dart"
    as community_testing_ryusdv_data_schema;
import "package:community_testing_ryusdv/backend/schema/enums/enums.dart"
    as community_testing_ryusdv_enums;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Доп. импорты только внутри кастомного блока:
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:video_player/video_player.dart';

class CustomVideoPlayer extends StatefulWidget {
  const CustomVideoPlayer({
    super.key,
    this.width,
    this.height,
    this.videoUrl,
    this.looping = true,
    this.autoPlay = true,
    this.muted = true, // для авто-старта в мобильных браузерах
    this.fit = BoxFit.cover,
    this.borderRadius,
  });

  final double? width;
  final double? height;
  final String? videoUrl;

  /// Зацикливать видео
  final bool looping;

  /// Автовоспроизведение после инициализации
  final bool autoPlay;

  /// Глушить звук (важно для авто-play на iOS/Safari)
  final bool muted;

  /// Как вписывать видео
  final BoxFit fit;

  /// Необязательный радиус скругления
  final BorderRadius? borderRadius;

  /// URL по умолчанию — если videoUrl не передан
  static const String kDefaultUrl =
      'https://s3.ru1.storage.beget.cloud/ab5e585e3692-learned-soren/bear_loop.mp4';

  /// Прогрев заранее (инициализирует контроллер и кэш браузера).
  /// Можно вызвать из любого места один раз, например в init приложения:
  /// await CustomVideoPlayer.warmUp(CustomVideoPlayer.kDefaultUrl);
  static Future<void> warmUp([String? url]) async {
    final _url =
        Uri.parse(url?.trim().isNotEmpty == true ? url!.trim() : kDefaultUrl);
    if (_controller != null && _currentUrl == _url.toString()) {
      // Уже прогрето
      return;
    }
    // Создаём новый контроллер и инициализируем, но не показываем
    final ctrl = VideoPlayerController.networkUrl(
      _url,
      videoPlayerOptions: const VideoPlayerOptions(mixWithOthers: true),
    );
    ctrl.setLooping(true);
    ctrl.setVolume(0); // на всякий — чтобы autoplay прошёл в браузере
    await ctrl.initialize();
    // Старт/пауза чтобы прогреть буфер (особенно полезно на веб)
    try {
      await ctrl.play();
      await Future.delayed(const Duration(milliseconds: 120));
      await ctrl.pause();
      await ctrl.seekTo(Duration.zero);
    } catch (_) {}
    // Сохраняем как singletons
    _controller?.removeListener(_noopListener);
    await _controller?.dispose();
    _controller = ctrl;
    _currentUrl = _url.toString();
  }

  @override
  State<CustomVideoPlayer> createState() => _CustomVideoPlayerState();

  // ------- SINGLETON CОНТРОЛЛЕРЫ (на все инстансы) -------
  // Переиспользуем один и тот же контроллер для одного и того же URL,
  // чтобы видео стартовало мгновенно без повторной инициализации.
  static VideoPlayerController? _controller;
  static String? _currentUrl;
  static Future<void>? _initFuture;

  // Пустой listener — нужен для корректного removeListener при прогреве
  static void _noopListener() {}
}

class _CustomVideoPlayerState extends State<CustomVideoPlayer> {
  bool _ready = false;

  VideoPlayerController? get _ctrl => CustomVideoPlayer._controller;

  @override
  void initState() {
    super.initState();
    _initOrAttach();
  }

  @override
  void didUpdateWidget(covariant CustomVideoPlayer oldWidget) {
    super.didUpdateWidget(oldWidget);
    final newUrl = (widget.videoUrl?.trim().isNotEmpty == true
            ? widget.videoUrl!.trim()
            : CustomVideoPlayer.kDefaultUrl)
        .toString();
    if (newUrl != CustomVideoPlayer._currentUrl) {
      // Если вдруг URL поменялся — переинициализируем singleton.
      _initOrAttach(forceUrl: newUrl);
    }
  }

  Future<void> _initOrAttach({String? forceUrl}) async {
    final url = Uri.parse(
      (forceUrl ?? widget.videoUrl)?.trim().isNotEmpty == true
          ? (forceUrl ?? widget.videoUrl)!.trim()
          : CustomVideoPlayer.kDefaultUrl,
    );

    // Если уже есть контроллер на этот же URL — просто «подключимся»
    if (CustomVideoPlayer._controller != null &&
        CustomVideoPlayer._currentUrl == url.toString() &&
        CustomVideoPlayer._controller!.value.isInitialized) {
      _bindController();
      // Автоплей если нужно
      if (widget.autoPlay) {
        _safePlay();
      }
      return;
    }

    // Иначе — создаём/инициализируем singleton (один раз)
    CustomVideoPlayer._currentUrl = url.toString();
    final controller = VideoPlayerController.networkUrl(
      url,
      videoPlayerOptions: const VideoPlayerOptions(mixWithOthers: true),
    );
    controller.setLooping(widget.looping);
    controller.setVolume(widget.muted ? 0 : 1);

    // Сохраняем инициализацию, чтобы не запускать её параллельно
    CustomVideoPlayer._controller = controller;
    CustomVideoPlayer._initFuture = controller.initialize().then((_) async {
      // Микро-прогрев буфера: короткий play→pause
      try {
        if (widget.autoPlay) {
          await controller.play();
        } else {
          await controller.play();
          await Future.delayed(const Duration(milliseconds: 100));
          await controller.pause();
          await controller.seekTo(Duration.zero);
        }
      } catch (_) {}
    });

    await CustomVideoPlayer._initFuture;
    if (!mounted) return;
    _bindController();
  }

  void _bindController() {
    _ctrl?.removeListener(_onCtrlUpdate);
    _ctrl?.addListener(_onCtrlUpdate);
    setState(() => _ready = _ctrl?.value.isInitialized == true);
  }

  void _onCtrlUpdate() {
    final initialized = _ctrl?.value.isInitialized == true;
    if (initialized != _ready && mounted) {
      setState(() => _ready = initialized);
    }
  }

  Future<void> _safePlay() async {
    final c = _ctrl;
    if (c == null) return;
    try {
      if (widget.muted) {
        // В Safari/iOS авто-play чаще всего разрешён только для muted
        c.setVolume(0);
      }
      if (!c.value.isPlaying) {
        await c.play();
      }
    } catch (_) {}
  }

  @override
  void dispose() {
    // ВАЖНО: НЕ dispose singleton контроллер — он общий для всех инстансов
    // и даёт быстрый старт на следующих экранах.
    _ctrl?.removeListener(_onCtrlUpdate);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = widget.width;
    final height = widget.height ?? 160;

    // Пока не инициализировалось — без текста и лоадера, просто резерв места
    if (!_ready) {
      return SizedBox(
        width: width,
        height: height,
      );
    }

    // Готово: отрисовываем видео без каких-либо «Loading»/спиннеров
    final child = FittedBox(
      fit: widget.fit,
      clipBehavior: Clip.hardEdge,
      child: SizedBox(
        width: _ctrl!.value.size.width,
        height: _ctrl!.value.size.height,
        child: VideoPlayer(_ctrl!),
      ),
    );

    return SizedBox(
      width: width,
      height: height,
      child: widget.borderRadius == null
          ? child
          : ClipRRect(borderRadius: widget.borderRadius!, child: child),
    );
  }
}
