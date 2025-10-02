import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pop/no_money_p_o_p/no_money_p_o_p_widget.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:community_testing_ryusdv/app_state.dart'
    as community_testing_ryusdv_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'categories_p_o_p_model.dart';
export 'categories_p_o_p_model.dart';

class CategoriesPOPWidget extends StatefulWidget {
  const CategoriesPOPWidget({
    super.key,
    required this.category,
    this.lastPlayedCardId,
  });

  final CategoryStruct? category;
  final String? lastPlayedCardId;

  @override
  State<CategoriesPOPWidget> createState() => _CategoriesPOPWidgetState();
}

class _CategoriesPOPWidgetState extends State<CategoriesPOPWidget>
    with TickerProviderStateMixin {
  late CategoriesPOPModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CategoriesPOPModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.0, 100.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

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
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 8.0,
          sigmaY: 8.0,
        ),
        child: InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            await Future.delayed(
              Duration(
                milliseconds: 200,
              ),
            );
            Navigator.pop(context);
          },
          child: Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: MediaQuery.sizeOf(context).height * 1.0,
            decoration: BoxDecoration(
              color: Colors.transparent,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(0.0),
                      topLeft: Radius.circular(24.0),
                      topRight: Radius.circular(24.0),
                    ),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(14.0, 0.0, 14.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, -1.0),
                          child: Container(
                            width: 41.0,
                            height: 6.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFD9D9D9),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 22.0, 0.0, 0.0),
                          child: Container(
                            height: 28.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFF5F5F5),
                              borderRadius: BorderRadius.circular(6.0),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  child: Text(
                                    (FFAppState().userData.loginDates.length >=
                                                widget.category!
                                                    .requiredGameDays) ||
                                            FFAppState()
                                                .userData
                                                .purchasedCategoriesIds
                                                .contains(widget.category?.id)
                                        ? 'Категория открыта'
                                        : 'Откроется завтра',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gazprombank',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        // 22/14
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 22.0, 0.0, 0.0),
                          child: Text(
                            valueOrDefault<String>(
                              widget.category?.name,
                              'CategoryName',
                            ),
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Halvar Web',
                                  fontSize: 28.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 14.0, 0.0, 0.0),
                          child: Text(
                            valueOrDefault<String>(
                              widget.category?.description,
                              'description',
                            ),
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Gazprombank',
                                  fontSize: 20.0,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 22.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Image.asset(
                                'assets/images/target.png',
                                width: 30.0,
                                height: 30.0,
                                fit: BoxFit.cover,
                              ),
                              Text(
                                '${widget.category?.cardsCount.toString()} вопросов',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Gazprombank',
                                      fontSize: 18.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ].divide(SizedBox(width: 6.0)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 32.0, 0.0, 0.0),
                          child: Container(
                            height: 69.0,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  FlutterFlowTheme.of(context).accent2,
                                  FlutterFlowTheme.of(context).tertiary
                                ],
                                stops: [0.0, 1.0],
                                begin: AlignmentDirectional(1.0, 0.0),
                                end: AlignmentDirectional(-1.0, 0),
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(3.0),
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(9.0),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '+${widget.category?.completeCategoryRewardCoins.toString()}',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Halvar Web',
                                            color: FlutterFlowTheme.of(context)
                                                .tertiary,
                                            fontSize: 24.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        'assets/images/coin.webp',
                                        width: 20.0,
                                        height: 20.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 6.0)),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                FFIcons.kuniE904,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 18.0,
                              ),
                              Expanded(
                                child: Text(
                                  valueOrDefault<String>(
                                    widget.category?.completeCategoryBonusText,
                                    'bonusText',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Gazprombank',
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ].divide(SizedBox(width: 10.0)),
                          ),
                        ),
                        if ((FFAppState().userData.loginDates.length >=
                                widget.category!.requiredGameDays) ||
                            FFAppState()
                                .userData
                                .purchasedCategoriesIds
                                .contains(widget.category?.id))
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 32.0, 0.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                context.goNamed(
                                  QuestionWidget.routeName,
                                  queryParameters: {
                                    'category': serializeParam(
                                      widget.category,
                                      ParamType.DataStruct,
                                    ),
                                    'lastPlayedCardId': serializeParam(
                                      widget.lastPlayedCardId,
                                      ParamType.String,
                                    ),
                                  }.withoutNulls,
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 0),
                                    ),
                                  },
                                );
                              },
                              text: functions.returnLastPlayedCard(
                                              widget.category!.cardsCount,
                                              widget.category!.id,
                                              FFAppState()
                                                  .userData
                                                  .completedCardsIds
                                                  .toList()) !=
                                          null &&
                                      functions.returnLastPlayedCard(
                                              widget.category!.cardsCount,
                                              widget.category!.id,
                                              FFAppState()
                                                  .userData
                                                  .completedCardsIds
                                                  .toList()) !=
                                          ''
                                  ? 'Продолжить игру'
                                  : 'Играть',
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: 52.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Gazprombank',
                                      color: Colors.white,
                                      fontSize: 18.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                                elevation: 0.0,
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                            ),
                          ),
                        if ((FFAppState().userData.loginDates.length <
                                widget.category!.requiredGameDays) &&
                            !FFAppState()
                                .userData
                                .purchasedCategoriesIds
                                .contains(widget.category?.id))
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 32.0, 0.0, 0.0),
                            child: Container(
                              width: double.infinity,
                              height: 52.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).primary,
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  if (FFAppState().userData.coins >=
                                      FFAppConstants.openCategoryCoinsPrice) {
                                    FFAppState().updateUserDataStruct(
                                      (e) => e
                                        ..incrementCoins(-FFAppConstants
                                            .openCategoryCoinsPrice)
                                        ..updatePurchasedCategoriesIds(
                                          (e) => e.add(widget.category!.id),
                                        ),
                                    );
                                    FFAppState().isShowCoinsAnimation = true;
                                    safeSetState(() {});

                                    context.goNamed(
                                      QuestionWidget.routeName,
                                      queryParameters: {
                                        'category': serializeParam(
                                          widget.category,
                                          ParamType.DataStruct,
                                        ),
                                      }.withoutNulls,
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.fade,
                                          duration: Duration(milliseconds: 0),
                                        ),
                                      },
                                    );
                                  } else {
                                    Navigator.pop(context);
                                    showModalBottomSheet(
                                      isScrollControlled: true,
                                      backgroundColor: Colors.transparent,
                                      context: context,
                                      builder: (context) {
                                        return Padding(
                                          padding:
                                              MediaQuery.viewInsetsOf(context),
                                          child: Container(
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                1.0,
                                            child: NoMoneyPOPWidget(),
                                          ),
                                        );
                                      },
                                    ).then((value) => safeSetState(() {}));
                                  }
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Играть за ${FFAppConstants.openCategoryCoinsPrice.toString()}',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Gazprombank',
                                            color: FlutterFlowTheme.of(context)
                                                .info,
                                            fontSize: 18.0,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        'assets/images/coin.webp',
                                        width: 20.0,
                                        height: 20.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 6.0)),
                                ),
                              ),
                            ),
                          ),
                      ]
                          .addToStart(SizedBox(height: 12.0))
                          .addToEnd(SizedBox(height: 36.0)),
                    ),
                  ),
                ).animateOnPageLoad(
                    animationsMap['containerOnPageLoadAnimation']!),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
