import '/backend/schema/structs/index.dart';
import '/components/back_one_widget.dart';
import '/components/close_widget.dart';
import '/components/tab_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pop/achievement_p_o_p/achievement_p_o_p_widget.dart';
import '/index.dart';
import 'package:community_testing_ryusdv/app_state.dart'
    as community_testing_ryusdv_app_state;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'profile_model.dart';
export 'profile_model.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({super.key});

  static String routeName = 'Profile';
  static String routePath = '/profile';

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  late ProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfileModel());

    _model.switchValue = FFAppState().userData.isEnablePush;
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();
    context.watch<community_testing_ryusdv_app_state.FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).customColor3,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: wrapWithModel(
                    model: _model.backOneModel,
                    updateCallback: () => safeSetState(() {}),
                    child: BackOneWidget(),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 33.0, 0.0, 36.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-1.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 54.0, 0.0, 0.0),
                          child: Text(
                            'Профиль',
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
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                        child: Builder(
                          builder: (context) {
                            final achieve = FFAppState().achievements.toList();

                            return SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: List.generate(achieve.length,
                                        (achieveIndex) {
                                  final achieveItem = achieve[achieveIndex];
                                  return InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (FFAppState()
                                          .userData
                                          .completedAchievements
                                          .contains(achieveItem.id)) {
                                        showModalBottomSheet(
                                          isScrollControlled: true,
                                          backgroundColor: Colors.transparent,
                                          context: context,
                                          builder: (context) {
                                            return GestureDetector(
                                              onTap: () {
                                                FocusScope.of(context)
                                                    .unfocus();
                                                FocusManager
                                                    .instance.primaryFocus
                                                    ?.unfocus();
                                              },
                                              child: Padding(
                                                padding:
                                                    MediaQuery.viewInsetsOf(
                                                        context),
                                                child: Container(
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .height *
                                                          1.0,
                                                  child: AchievementPOPWidget(
                                                    achievement: achieveItem,
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        ).then((value) => safeSetState(() {}));

                                        return;
                                      } else {
                                        return;
                                      }
                                    },
                                    child: Container(
                                      width: 194.0,
                                      height: 194.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Opacity(
                                            opacity: FFAppState()
                                                    .userData
                                                    .completedAchievements
                                                    .contains(achieveItem.id)
                                                ? 1.0
                                                : 0.3,
                                            child: CachedNetworkImage(
                                              fadeInDuration:
                                                  Duration(milliseconds: 100),
                                              fadeOutDuration:
                                                  Duration(milliseconds: 100),
                                              imageUrl: valueOrDefault<String>(
                                                achieveItem.image,
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/hackathon-p74jkp/assets/oz8zo1gbf99n/heart.webp',
                                              ),
                                              width: 127.0,
                                              height: 127.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Opacity(
                                            opacity: FFAppState()
                                                    .userData
                                                    .completedAchievements
                                                    .contains(achieveItem.id)
                                                ? 1.0
                                                : 0.3,
                                            child: Text(
                                              achieveItem.name,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Gazprombank',
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ]
                                            .divide(SizedBox(height: 12.0))
                                            .addToStart(SizedBox(height: 12.0)),
                                      ),
                                    ),
                                  );
                                })
                                    .divide(SizedBox(width: 8.0))
                                    .addToStart(SizedBox(width: 14.0))
                                    .addToEnd(SizedBox(width: 14.0)),
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            14.0, 32.0, 14.0, 14.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Пройдено категорий',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Gazprombank',
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            Text(
                              valueOrDefault<String>(
                                FFAppState()
                                    .userData
                                    .completedCategoriesIds
                                    .length
                                    .toString(),
                                '0',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Gazprombank',
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 1.0,
                        indent: 14.0,
                        endIndent: 14.0,
                        color: Color(0xFFD3D6E3),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            14.0, 14.0, 14.0, 14.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Отвечено вопросов',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Gazprombank',
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            Text(
                              valueOrDefault<String>(
                                FFAppState()
                                    .userData
                                    .completedCardsIds
                                    .length
                                    .toString(),
                                '0',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Gazprombank',
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 1.0,
                        indent: 14.0,
                        endIndent: 14.0,
                        color: Color(0xFFD3D6E3),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            14.0, 8.0, 14.0, 14.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Уведомления',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Gazprombank',
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            Switch.adaptive(
                              value: _model.switchValue!,
                              onChanged: (newValue) async {
                                safeSetState(
                                    () => _model.switchValue = newValue);
                              },
                              activeColor: FlutterFlowTheme.of(context).primary,
                              activeTrackColor:
                                  FlutterFlowTheme.of(context).primary,
                              inactiveTrackColor: Color(0xFFD9D9D9),
                              inactiveThumbColor:
                                  FlutterFlowTheme.of(context).customColor3,
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onLongPress: () async {
                              FFAppState().userData =
                                  UserStruct.fromSerializableMap(jsonDecode(
                                      '{\"name\":\"Игрок\",\"fin_level\":\"0\",\"coins\":\"0\",\"completed_quests_ids\":\"[]\",\"completed_categories_ids\":\"[]\",\"completed_questions_ids\":\"[]\",\"daysInGame\":\"0\"}'));
                              safeSetState(() {});

                              context.goNamed(GameWidget.routeName);
                            },
                            child: Text(
                              'Сбросить прогресс (долгий тап)',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Gazprombank',
                                    color: FlutterFlowTheme.of(context).error,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(1.0, -1.0),
                  child: wrapWithModel(
                    model: _model.closeModel,
                    updateCallback: () => safeSetState(() {}),
                    child: CloseWidget(),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 1.0),
                  child: wrapWithModel(
                    model: _model.tabBarModel,
                    updateCallback: () => safeSetState(() {}),
                    child: TabBarWidget(
                      page: 2,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
