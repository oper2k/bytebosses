import '/components/back_one_widget.dart';
import '/components/head_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'result_widget.dart' show ResultWidget;
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class ResultModel extends FlutterFlowModel<ResultWidget> {
  ///  State fields for stateful widgets in this page.

  AudioPlayer? soundPlayer;
  // Model for BackOne component.
  late BackOneModel backOneModel;
  // Model for head component.
  late HeadModel headModel;

  @override
  void initState(BuildContext context) {
    backOneModel = createModel(context, () => BackOneModel());
    headModel = createModel(context, () => HeadModel());
  }

  @override
  void dispose() {
    backOneModel.dispose();
    headModel.dispose();
  }
}
