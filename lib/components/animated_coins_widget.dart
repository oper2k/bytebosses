import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:community_testing_ryusdv/app_state.dart'
    as community_testing_ryusdv_app_state;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'animated_coins_model.dart';
export 'animated_coins_model.dart';

class AnimatedCoinsWidget extends StatefulWidget {
  const AnimatedCoinsWidget({super.key});

  @override
  State<AnimatedCoinsWidget> createState() => _AnimatedCoinsWidgetState();
}

class _AnimatedCoinsWidgetState extends State<AnimatedCoinsWidget>
    with TickerProviderStateMixin {
  late AnimatedCoinsModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AnimatedCoinsModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(
        Duration(
          milliseconds: 600,
        ),
      );
      FFAppState().isShowCoinsAnimation = false;
      _model.updatePage(() {});
    });

    animationsMap.addAll({
      'imageOnPageLoadAnimation': AnimationInfo(
        reverse: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FlipEffect(
            curve: Curves.linear,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 1.0,
            end: 4.0,
          ),
        ],
      ),
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

    return ClipRRect(
      borderRadius: BorderRadius.circular(0.0),
      child: Image.asset(
        'assets/images/coin.webp',
        width: 18.0,
        height: 18.0,
        fit: BoxFit.cover,
      ),
    ).animateOnPageLoad(animationsMap['imageOnPageLoadAnimation']!);
  }
}
