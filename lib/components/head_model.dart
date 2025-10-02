import '/components/animated_coins_widget.dart';
import '/components/progress_bar_animation_widget.dart';
import '/components/progress_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'head_widget.dart' show HeadWidget;
import 'package:flutter/material.dart';

class HeadModel extends FlutterFlowModel<HeadWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for progressBar component.
  late ProgressBarModel progressBarModel;
  // Model for progressBarAnimation component.
  late ProgressBarAnimationModel progressBarAnimationModel;
  // Model for animatedCoins component.
  late AnimatedCoinsModel animatedCoinsModel;

  @override
  void initState(BuildContext context) {
    progressBarModel = createModel(context, () => ProgressBarModel());
    progressBarAnimationModel =
        createModel(context, () => ProgressBarAnimationModel());
    animatedCoinsModel = createModel(context, () => AnimatedCoinsModel());
  }

  @override
  void dispose() {
    progressBarModel.dispose();
    progressBarAnimationModel.dispose();
    animatedCoinsModel.dispose();
  }
}
