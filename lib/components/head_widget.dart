import '/components/animated_coins_widget.dart';
import '/components/progress_bar_animation_widget.dart';
import '/components/progress_bar_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pop/coins_p_o_p/coins_p_o_p_widget.dart';
import '/pop/finance_p_o_p/finance_p_o_p_widget.dart';
import 'package:community_testing_ryusdv/app_state.dart'
    as community_testing_ryusdv_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'head_model.dart';
export 'head_model.dart';

class HeadWidget extends StatefulWidget {
  const HeadWidget({super.key});

  @override
  State<HeadWidget> createState() => _HeadWidgetState();
}

class _HeadWidgetState extends State<HeadWidget> with TickerProviderStateMixin {
  late HeadModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HeadModel());

    animationsMap.addAll({
      'progressBarOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ShimmerEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            color: Color(0x80FFFFFF),
            angle: 0.524,
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

    return Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              showModalBottomSheet(
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                context: context,
                builder: (context) {
                  return Padding(
                    padding: MediaQuery.viewInsetsOf(context),
                    child: Container(
                      height: MediaQuery.sizeOf(context).height * 1.0,
                      child: FinancePOPWidget(),
                    ),
                  );
                },
              ).then((value) => safeSetState(() {}));
            },
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                wrapWithModel(
                  model: _model.progressBarModel,
                  updateCallback: () => safeSetState(() {}),
                  child: ProgressBarWidget(),
                ).animateOnActionTrigger(
                  animationsMap['progressBarOnActionTriggerAnimation']!,
                ),
                if (FFAppState().isShowProgressBarAnimation)
                  wrapWithModel(
                    model: _model.progressBarAnimationModel,
                    updateCallback: () => safeSetState(() {}),
                    child: ProgressBarAnimationWidget(
                      callback: () async {
                        if (animationsMap[
                                'progressBarOnActionTriggerAnimation'] !=
                            null) {
                          await animationsMap[
                                  'progressBarOnActionTriggerAnimation']!
                              .controller
                              .forward(from: 0.0);
                        }
                      },
                    ),
                  ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Финансовая грамотность',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Gazprombank',
                              letterSpacing: 0.0,
                            ),
                      ),
                      Text(
                        valueOrDefault<String>(
                          '${FFAppState().userData.finLevel > 100.0 ? '100' : FFAppState().userData.finLevel.toString()}%',
                          '0',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Gazprombank',
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            showModalBottomSheet(
              isScrollControlled: true,
              backgroundColor: Colors.transparent,
              context: context,
              builder: (context) {
                return Padding(
                  padding: MediaQuery.viewInsetsOf(context),
                  child: Container(
                    height: MediaQuery.sizeOf(context).height * 1.0,
                    child: CoinsPOPWidget(),
                  ),
                );
              },
            ).then((value) => safeSetState(() {}));
          },
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 74.0,
                height: 26.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 8.0, 4.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      if (!FFAppState().isShowCoinsAnimation)
                        ClipRRect(
                          borderRadius: BorderRadius.circular(0.0),
                          child: Image.asset(
                            'assets/images/coin.webp',
                            width: 18.0,
                            height: 18.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      if (FFAppState().isShowCoinsAnimation)
                        wrapWithModel(
                          model: _model.animatedCoinsModel,
                          updateCallback: () => safeSetState(() {}),
                          child: AnimatedCoinsWidget(),
                        ),
                      Flexible(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              4.0, 0.0, 0.0, 0.0),
                          child: Text(
                            FFAppState().userData.coins.toString(),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Halvar Web',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ].divide(SizedBox(width: 8.0)),
    );
  }
}
