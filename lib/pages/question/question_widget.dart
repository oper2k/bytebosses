import '/backend/schema/structs/index.dart';
import '/components/back_cecnd_widget.dart';
import '/components/close_widget.dart';
import '/components/head_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/index.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'question_model.dart';
export 'question_model.dart';

class QuestionWidget extends StatefulWidget {
  const QuestionWidget({
    super.key,
    required this.category,
    this.lastPlayedCardId,
    bool? isPlayAgain,
  }) : this.isPlayAgain = isPlayAgain ?? false;

  final CategoryStruct? category;
  final String? lastPlayedCardId;
  final bool isPlayAgain;

  static String routeName = 'Question';
  static String routePath = '/question';

  @override
  State<QuestionWidget> createState() => _QuestionWidgetState();
}

class _QuestionWidgetState extends State<QuestionWidget>
    with TickerProviderStateMixin {
  late QuestionModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QuestionModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (widget.lastPlayedCardId != null && widget.lastPlayedCardId != '') {
        _model.currentCardIndex = (String lastCardId) {
          return int.parse(lastCardId.split('_').last);
        }(widget.lastPlayedCardId!);
        safeSetState(() {});
      }
      _model.currentCard = widget.category?.cardsList
          .sortedList(keyOf: (e) => e.order, desc: false)
          .elementAtOrNull(_model.currentCardIndex);
      safeSetState(() {});
    });

    animationsMap.addAll({
      'stackOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'stackOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).customColor3,
        body: Container(
          width: MediaQuery.sizeOf(context).width * 1.0,
          height: MediaQuery.sizeOf(context).height * 1.0,
          decoration: BoxDecoration(),
          child: Stack(
            children: [
              wrapWithModel(
                model: _model.backCecndModel,
                updateCallback: () => safeSetState(() {}),
                child: BackCecndWidget(),
              ),
              Container(
                decoration: BoxDecoration(),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(14.0, 0.0, 14.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 54.0, 0.0, 0.0),
                        child: Text(
                          valueOrDefault<String>(
                            widget.category?.name,
                            'CategoryTitle',
                          ),
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Halvar Web',
                                    fontSize: 28.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                        child: wrapWithModel(
                          model: _model.headModel,
                          updateCallback: () => safeSetState(() {}),
                          child: HeadWidget(),
                        ),
                      ),
                      if (_model.currentCard != null)
                        Flexible(
                          child: Builder(
                            builder: (context) {
                              if (_model.isShowQuestion) {
                                return Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 36.0, 0.0, 36.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(14.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                height: 26.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFFF3F3F3),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          10.0, 0.0, 10.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Text(
                                                        '${_model.currentCard?.order.toString()}/${widget.category?.cardsCount.toString()}',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Halvar Web',
                                                              fontSize: 20.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(width: 6.0)),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 24.0, 0.0, 0.0),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                  child: CachedNetworkImage(
                                                    fadeInDuration: Duration(
                                                        milliseconds: 100),
                                                    fadeOutDuration: Duration(
                                                        milliseconds: 100),
                                                    imageUrl:
                                                        valueOrDefault<String>(
                                                      _model.currentCard?.image,
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/hackathon-p74jkp/assets/6f835fp2bdbc/question.webp',
                                                    ),
                                                    width: 100.0,
                                                    height: 100.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 24.0, 0.0, 0.0),
                                                child: Text(
                                                  valueOrDefault<String>(
                                                    _model.currentCard
                                                        ?.questionText,
                                                    'questionText',
                                                  ),
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Gazprombank',
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 24.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Stack(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          2.0, 6.0, 0.0, 0.0),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(12.0),
                                                      bottomRight:
                                                          Radius.circular(12.0),
                                                      topLeft:
                                                          Radius.circular(18.0),
                                                      topRight:
                                                          Radius.circular(12.0),
                                                    ),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        gradient:
                                                            LinearGradient(
                                                          colors: [
                                                            _model.selectedVariant ==
                                                                    'A'
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .accent2
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .alternate,
                                                            _model.selectedVariant ==
                                                                    'A'
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .tertiary
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .alternate
                                                          ],
                                                          stops: [0.0, 1.0],
                                                          begin:
                                                              AlignmentDirectional(
                                                                  1.0, 0.0),
                                                          end:
                                                              AlignmentDirectional(
                                                                  -1.0, 0),
                                                        ),
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  12.0),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  12.0),
                                                          topLeft:
                                                              Radius.circular(
                                                                  18.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  12.0),
                                                        ),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.all(3.0),
                                                        child: Container(
                                                          width:
                                                              double.infinity,
                                                          height: 66.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        9.0),
                                                          ),
                                                          child: Stack(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            children: [
                                                              Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        50.0,
                                                                        0.0,
                                                                        24.0,
                                                                        0.0),
                                                                child: Text(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    _model
                                                                        .currentCard
                                                                        ?.variantAText,
                                                                    'Variant A',
                                                                  ),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Gazprombank',
                                                                        fontSize:
                                                                            16.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ),
                                                              FFButtonWidget(
                                                                onPressed:
                                                                    () async {
                                                                  _model.selectedVariant =
                                                                      'A';
                                                                  safeSetState(
                                                                      () {});
                                                                  await Future
                                                                      .delayed(
                                                                    Duration(
                                                                      milliseconds:
                                                                          1000,
                                                                    ),
                                                                  );
                                                                  _model.isShowQuestion =
                                                                      false;
                                                                  safeSetState(
                                                                      () {});
                                                                  if (!widget
                                                                      .isPlayAgain) {
                                                                    FFAppState()
                                                                        .updateUserDataStruct(
                                                                      (e) => e
                                                                        ..incrementFinLevel(_model
                                                                            .currentCard!
                                                                            .variantAIncreaseFinLevel)
                                                                        ..incrementCoins(_model
                                                                            .currentCard!
                                                                            .variantAIncreaseCoins)
                                                                        ..updateCompletedCardsIds(
                                                                          (e) =>
                                                                              e.add('${widget.category?.id}_${_model.currentCard?.order.toString()}'),
                                                                        ),
                                                                    );
                                                                    FFAppState()
                                                                        .isShowCoinsAnimation = (_model.currentCard?.variantAIncreaseCoins !=
                                                                                null) &&
                                                                            (_model.currentCard?.variantAIncreaseCoins !=
                                                                                0)
                                                                        ? true
                                                                        : false;
                                                                    FFAppState()
                                                                        .isShowProgressBarAnimation = (_model.currentCard?.variantAIncreaseFinLevel !=
                                                                                null) &&
                                                                            (_model.currentCard?.variantAIncreaseFinLevel !=
                                                                                0.0)
                                                                        ? true
                                                                        : false;
                                                                    safeSetState(
                                                                        () {});
                                                                  }
                                                                },
                                                                text: 'A',
                                                                options:
                                                                    FFButtonOptions(
                                                                  width: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      1.0,
                                                                  height: MediaQuery.sizeOf(
                                                                              context)
                                                                          .height *
                                                                      1.0,
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          16.0,
                                                                          0.0),
                                                                  iconPadding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  color: Colors
                                                                      .transparent,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Gazprombank',
                                                                        color: Colors
                                                                            .transparent,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.normal,
                                                                      ),
                                                                  elevation:
                                                                      0.0,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  width: 50.0,
                                                  height: 50.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 2.0,
                                                        color:
                                                            Color(0x33000000),
                                                        offset: Offset(
                                                          0.0,
                                                          0.0,
                                                        ),
                                                        spreadRadius: 0.0,
                                                      )
                                                    ],
                                                    shape: BoxShape.circle,
                                                    border: Border.all(
                                                      color: _model
                                                                  .selectedVariant ==
                                                              'A'
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .tertiary
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryBackground,
                                                      width: 2.5,
                                                    ),
                                                  ),
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    valueOrDefault<String>(
                                                      _model.currentCard
                                                          ?.variantAEmoji,
                                                      '💸',
                                                    ),
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Gazprombank',
                                                          fontSize: 26.0,
                                                          letterSpacing: 0.0,
                                                          lineHeight: 1.0,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ).animateOnPageLoad(animationsMap[
                                                'stackOnPageLoadAnimation1']!),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 8.0, 0.0, 0.0),
                                              child: Stack(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(2.0, 6.0,
                                                                0.0, 0.0),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(
                                                                12.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                12.0),
                                                        topLeft:
                                                            Radius.circular(
                                                                18.0),
                                                        topRight:
                                                            Radius.circular(
                                                                12.0),
                                                      ),
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          gradient:
                                                              LinearGradient(
                                                            colors: [
                                                              _model.selectedVariant ==
                                                                      'B'
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .alternate,
                                                              _model.selectedVariant ==
                                                                      'B'
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondary
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .alternate
                                                            ],
                                                            stops: [0.0, 1.0],
                                                            begin:
                                                                AlignmentDirectional(
                                                                    1.0, 0.0),
                                                            end:
                                                                AlignmentDirectional(
                                                                    -1.0, 0),
                                                          ),
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    12.0),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    12.0),
                                                            topLeft:
                                                                Radius.circular(
                                                                    18.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    12.0),
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  3.0),
                                                          child: Container(
                                                            width:
                                                                double.infinity,
                                                            height: 66.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          9.0),
                                                            ),
                                                            child: Stack(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          50.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      _model
                                                                          .currentCard
                                                                          ?.variantBText,
                                                                      'Variant B',
                                                                    ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Gazprombank',
                                                                          fontSize:
                                                                              16.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                ),
                                                                FFButtonWidget(
                                                                  onPressed:
                                                                      () async {
                                                                    _model.selectedVariant =
                                                                        'B';
                                                                    safeSetState(
                                                                        () {});
                                                                    await Future
                                                                        .delayed(
                                                                      Duration(
                                                                        milliseconds:
                                                                            1000,
                                                                      ),
                                                                    );
                                                                    _model.isShowQuestion =
                                                                        false;
                                                                    safeSetState(
                                                                        () {});
                                                                    if (!widget
                                                                        .isPlayAgain) {
                                                                      FFAppState()
                                                                          .updateUserDataStruct(
                                                                        (e) => e
                                                                          ..incrementFinLevel(_model
                                                                              .currentCard!
                                                                              .variantBIncreaseFinLevel)
                                                                          ..incrementCoins(_model
                                                                              .currentCard!
                                                                              .variantBIncreaseCoins)
                                                                          ..updateCompletedCardsIds(
                                                                            (e) =>
                                                                                e.add('${widget.category?.id}_${_model.currentCard?.order.toString()}'),
                                                                          ),
                                                                      );
                                                                      FFAppState()
                                                                          .isShowCoinsAnimation = (_model.currentCard?.variantBIncreaseCoins != null) &&
                                                                              (_model.currentCard?.variantBIncreaseCoins != 0)
                                                                          ? true
                                                                          : false;
                                                                      FFAppState()
                                                                          .isShowProgressBarAnimation = (_model.currentCard?.variantBIncreaseFinLevel != null) &&
                                                                              (_model.currentCard?.variantBIncreaseFinLevel != 0.0)
                                                                          ? true
                                                                          : false;
                                                                      safeSetState(
                                                                          () {});
                                                                    }
                                                                  },
                                                                  text: 'B',
                                                                  options:
                                                                      FFButtonOptions(
                                                                    width: MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        1.0,
                                                                    height:
                                                                        MediaQuery.sizeOf(context).height *
                                                                            1.0,
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16.0,
                                                                            0.0,
                                                                            16.0,
                                                                            0.0),
                                                                    iconPadding:
                                                                        EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    color: Colors
                                                                        .transparent,
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .override(
                                                                          fontFamily:
                                                                              'Gazprombank',
                                                                          color:
                                                                              Colors.transparent,
                                                                          fontSize:
                                                                              16.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                        ),
                                                                    elevation:
                                                                        0.0,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          blurRadius: 2.0,
                                                          color:
                                                              Color(0x33000000),
                                                          offset: Offset(
                                                            0.0,
                                                            0.0,
                                                          ),
                                                          spreadRadius: 0.0,
                                                        )
                                                      ],
                                                      shape: BoxShape.circle,
                                                      border: Border.all(
                                                        color: _model
                                                                    .selectedVariant ==
                                                                'B'
                                                            ? FlutterFlowTheme
                                                                    .of(context)
                                                                .secondary
                                                            : FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                        width: 2.5,
                                                      ),
                                                    ),
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Text(
                                                      valueOrDefault<String>(
                                                        _model.currentCard
                                                            ?.variantBEmoji,
                                                        '💡',
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Gazprombank',
                                                            fontSize: 26.0,
                                                            letterSpacing: 0.0,
                                                            lineHeight: 1.0,
                                                          ),
                                                    ),
                                                  ),
                                                ],
                                              ).animateOnPageLoad(animationsMap[
                                                  'stackOnPageLoadAnimation2']!),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              } else {
                                return Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 36.0, 0.0, 36.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          if (_model.selectedVariant == 'A')
                                            Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        14.0, 24.0, 14.0, 14.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          1.0,
                                                      height: 180.0,
                                                      decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                          fit: BoxFit.contain,
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          image: Image.asset(
                                                            'assets/images/bear.webp',
                                                          ).image,
                                                        ),
                                                      ),
                                                      child: Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                1.0,
                                                        height: 180.0,
                                                        child: custom_widgets
                                                            .CustomVideoPlayer(
                                                          width:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  1.0,
                                                          height: 180.0,
                                                          videoUrl:
                                                              'https://s3.ru1.storage.beget.cloud/ab5e585e3692-learned-soren/bear_loop.mp4',
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      valueOrDefault<String>(
                                                        _model.currentCard
                                                            ?.variantAResult,
                                                        'Variant A - result text',
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Gazprombank',
                                                            fontSize: 18.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                          ),
                                                    ),
                                                    if (_model.currentCard
                                                                ?.variantAResultBtnText !=
                                                            null &&
                                                        _model.currentCard
                                                                ?.variantAResultBtnText !=
                                                            '')
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    24.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: FFButtonWidget(
                                                          onPressed: () async {
                                                            await launchURL(_model
                                                                .currentCard!
                                                                .variantAResultBtnLink);
                                                          },
                                                          text: _model
                                                              .currentCard!
                                                              .variantAResultBtnText,
                                                          options:
                                                              FFButtonOptions(
                                                            width:
                                                                double.infinity,
                                                            height: 52.0,
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        0.0,
                                                                        16.0,
                                                                        0.0),
                                                            iconPadding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .info,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Gazprombank',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      fontSize:
                                                                          18.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
                                                                    ),
                                                            elevation: 0.0,
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.0),
                                                          ),
                                                        ),
                                                      ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          if (_model.selectedVariant == 'B')
                                            Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        14.0, 24.0, 14.0, 14.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          1.0,
                                                      height: 180.0,
                                                      decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                          fit: BoxFit.contain,
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          image: Image.asset(
                                                            'assets/images/bear.webp',
                                                          ).image,
                                                        ),
                                                      ),
                                                      child: Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                1.0,
                                                        height: 180.0,
                                                        child: custom_widgets
                                                            .CustomVideoPlayer(
                                                          width:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  1.0,
                                                          height: 180.0,
                                                          videoUrl:
                                                              'https://s3.ru1.storage.beget.cloud/ab5e585e3692-learned-soren/bear_loop.mp4',
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      valueOrDefault<String>(
                                                        _model.currentCard
                                                            ?.variantBResult,
                                                        'Variant B - result text',
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Gazprombank',
                                                            fontSize: 18.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                          ),
                                                    ),
                                                    if (_model.currentCard
                                                                ?.variantBResultBtnText !=
                                                            null &&
                                                        _model.currentCard
                                                                ?.variantBResultBtnText !=
                                                            '')
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    24.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: FFButtonWidget(
                                                          onPressed: () async {
                                                            await launchURL(_model
                                                                .currentCard!
                                                                .variantBResultBtnLink);
                                                          },
                                                          text: _model
                                                              .currentCard!
                                                              .variantBResultBtnText,
                                                          options:
                                                              FFButtonOptions(
                                                            width:
                                                                double.infinity,
                                                            height: 52.0,
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        0.0,
                                                                        16.0,
                                                                        0.0),
                                                            iconPadding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .info,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Gazprombank',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      fontSize:
                                                                          18.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
                                                                    ),
                                                            elevation: 0.0,
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.0),
                                                          ),
                                                        ),
                                                      ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 24.0, 0.0, 0.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            if ((_model.currentCardIndex + 1) <
                                                widget.category!.cardsList
                                                    .length) {
                                              _model.selectedVariant = '';
                                              _model.isShowQuestion = true;
                                              _model.currentCardIndex =
                                                  _model.currentCardIndex + 1;
                                              _model.currentCard = widget
                                                  .category?.cardsList
                                                  .sortedList(
                                                      keyOf: (e) => e.order,
                                                      desc: false)
                                                  .elementAtOrNull(
                                                      _model.currentCardIndex);
                                              safeSetState(() {});
                                            } else {
                                              FFAppState().updateUserDataStruct(
                                                (e) => e
                                                  ..updateCompletedCategoriesIds(
                                                    (e) => e.add(
                                                        widget.category!.id),
                                                  )
                                                  ..updateCompletedAchievements(
                                                    (e) => e.add(widget
                                                        .category!
                                                        .unlockAchievementId),
                                                  ),
                                              );
                                              safeSetState(() {});

                                              context.goNamed(
                                                ResultWidget.routeName,
                                                queryParameters: {
                                                  'category': serializeParam(
                                                    widget.category,
                                                    ParamType.DataStruct,
                                                  ),
                                                  'isPlayAgain': serializeParam(
                                                    widget.isPlayAgain,
                                                    ParamType.bool,
                                                  ),
                                                }.withoutNulls,
                                                extra: <String, dynamic>{
                                                  kTransitionInfoKey:
                                                      TransitionInfo(
                                                    hasTransition: true,
                                                    transitionType:
                                                        PageTransitionType.fade,
                                                    duration: Duration(
                                                        milliseconds: 0),
                                                  ),
                                                },
                                              );
                                            }
                                          },
                                          text: valueOrDefault<String>(
                                            (_model.currentCardIndex + 1) <
                                                    widget.category!.cardsList
                                                        .length
                                                ? 'К следующему вопросу'
                                                : 'К результатам',
                                            'К следующему вопросу',
                                          ),
                                          options: FFButtonOptions(
                                            width: double.infinity,
                                            height: 52.0,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 16.0, 0.0),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Gazprombank',
                                                      color: Colors.white,
                                                      fontSize: 18.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                    ),
                                            elevation: 0.0,
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }
                            },
                          ),
                        ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(1.0, -1.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.goNamed(GameWidget.routeName);
                  },
                  child: wrapWithModel(
                    model: _model.closeModel,
                    updateCallback: () => safeSetState(() {}),
                    child: CloseWidget(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
