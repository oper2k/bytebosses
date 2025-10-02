import '/flutter_flow/flutter_flow_util.dart';
import 'package:community_testing_ryusdv/app_state.dart'
    as community_testing_ryusdv_app_state;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';
import 'progress_bar_animation_model.dart';
export 'progress_bar_animation_model.dart';

class ProgressBarAnimationWidget extends StatefulWidget {
  const ProgressBarAnimationWidget({
    super.key,
    required this.callback,
  });

  final Future Function()? callback;

  @override
  State<ProgressBarAnimationWidget> createState() =>
      _ProgressBarAnimationWidgetState();
}

class _ProgressBarAnimationWidgetState
    extends State<ProgressBarAnimationWidget> {
  late ProgressBarAnimationModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProgressBarAnimationModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.soundPlayer ??= AudioPlayer();
      if (_model.soundPlayer!.playing) {
        await _model.soundPlayer!.stop();
      }
      _model.soundPlayer!.setVolume(1.0);
      _model.soundPlayer!
          .setAsset('assets/audios/fin_level_up.mp3')
          .then((_) => _model.soundPlayer!.play());

      await widget.callback?.call();
      await Future.delayed(
        Duration(
          milliseconds: 600,
        ),
      );
      FFAppState().isShowProgressBarAnimation = false;
      _model.updatePage(() {});
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();
    context.watch<community_testing_ryusdv_app_state.FFAppState>();

    return Container(
      width: 0.0,
      height: 0.0,
      decoration: BoxDecoration(),
    );
  }
}
