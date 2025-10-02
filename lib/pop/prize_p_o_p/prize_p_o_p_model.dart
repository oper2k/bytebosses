import '/components/progress_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'prize_p_o_p_widget.dart' show PrizePOPWidget;
import 'package:flutter/material.dart';

class PrizePOPModel extends FlutterFlowModel<PrizePOPWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for progressBar component.
  late ProgressBarModel progressBarModel;

  @override
  void initState(BuildContext context) {
    progressBarModel = createModel(context, () => ProgressBarModel());
  }

  @override
  void dispose() {
    progressBarModel.dispose();
  }
}
