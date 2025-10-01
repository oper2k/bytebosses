import '/components/back_one_widget.dart';
import '/components/close_widget.dart';
import '/components/head_widget.dart';
import '/components/tab_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'lavka_widget.dart' show LavkaWidget;
import 'package:flutter/material.dart';

class LavkaModel extends FlutterFlowModel<LavkaWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for BackOne component.
  late BackOneModel backOneModel;
  // Model for head component.
  late HeadModel headModel;
  // Model for Close component.
  late CloseModel closeModel;
  // Model for TabBar component.
  late TabBarModel tabBarModel;

  @override
  void initState(BuildContext context) {
    backOneModel = createModel(context, () => BackOneModel());
    headModel = createModel(context, () => HeadModel());
    closeModel = createModel(context, () => CloseModel());
    tabBarModel = createModel(context, () => TabBarModel());
  }

  @override
  void dispose() {
    backOneModel.dispose();
    headModel.dispose();
    closeModel.dispose();
    tabBarModel.dispose();
  }
}
