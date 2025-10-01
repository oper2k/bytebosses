import '/backend/schema/structs/index.dart';
import '/components/back_cecnd_widget.dart';
import '/components/close_widget.dart';
import '/components/head_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'question_widget.dart' show QuestionWidget;
import 'package:flutter/material.dart';

class QuestionModel extends FlutterFlowModel<QuestionWidget> {
  ///  Local state fields for this page.

  int currentCardIndex = 0;

  CardStruct? currentCard;
  void updateCurrentCardStruct(Function(CardStruct) updateFn) {
    updateFn(currentCard ??= CardStruct());
  }

  bool isShowQuestion = true;

  String selectedVariant = 'A';

  ///  State fields for stateful widgets in this page.

  // Model for BackCecnd component.
  late BackCecndModel backCecndModel;
  // Model for head component.
  late HeadModel headModel;
  // Model for Close component.
  late CloseModel closeModel;

  @override
  void initState(BuildContext context) {
    backCecndModel = createModel(context, () => BackCecndModel());
    headModel = createModel(context, () => HeadModel());
    closeModel = createModel(context, () => CloseModel());
  }

  @override
  void dispose() {
    backCecndModel.dispose();
    headModel.dispose();
    closeModel.dispose();
  }
}
