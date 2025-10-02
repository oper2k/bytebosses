import '/components/back_one_widget.dart';
import '/components/close_widget.dart';
import '/components/tab_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'profile_widget.dart' show ProfileWidget;
import 'package:flutter/material.dart';

class ProfileModel extends FlutterFlowModel<ProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for BackOne component.
  late BackOneModel backOneModel;
  // State field(s) for Switch widget.
  bool? switchValue;
  // Model for Close component.
  late CloseModel closeModel;
  // Model for TabBar component.
  late TabBarModel tabBarModel;

  @override
  void initState(BuildContext context) {
    backOneModel = createModel(context, () => BackOneModel());
    closeModel = createModel(context, () => CloseModel());
    tabBarModel = createModel(context, () => TabBarModel());
  }

  @override
  void dispose() {
    backOneModel.dispose();
    closeModel.dispose();
    tabBarModel.dispose();
  }
}
