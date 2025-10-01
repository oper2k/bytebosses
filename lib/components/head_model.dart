import '/components/animated_coins_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'head_widget.dart' show HeadWidget;
import 'package:flutter/material.dart';

class HeadModel extends FlutterFlowModel<HeadWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for animatedCoins component.
  late AnimatedCoinsModel animatedCoinsModel;

  @override
  void initState(BuildContext context) {
    animatedCoinsModel = createModel(context, () => AnimatedCoinsModel());
  }

  @override
  void dispose() {
    animatedCoinsModel.dispose();
  }
}
