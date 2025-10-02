import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'back_cecnd_model.dart';
export 'back_cecnd_model.dart';

class BackCecndWidget extends StatefulWidget {
  const BackCecndWidget({super.key});

  @override
  State<BackCecndWidget> createState() => _BackCecndWidgetState();
}

class _BackCecndWidgetState extends State<BackCecndWidget> {
  late BackCecndModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BackCecndModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: AlignmentDirectional(1.0, -1.0),
          child: Transform.translate(
            offset: Offset(100.0, 0.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(60.0, 0.0, 0.0, 0.0),
              child: ClipRect(
                child: ImageFiltered(
                  imageFilter: ImageFilter.blur(
                    sigmaX: 40.0,
                    sigmaY: 40.0,
                  ),
                  child: Transform.translate(
                    offset: Offset(100.0, 0.0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          0.0, 200.0, 0.0, 180.0),
                      child: Container(
                        width: 435.0,
                        height: 270.0,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0x651A1BEF), Color(0x6758FCFE)],
                            stops: [0.0, 1.0],
                            begin: AlignmentDirectional(0.0, -1.0),
                            end: AlignmentDirectional(0, 1.0),
                          ),
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: AlignmentDirectional(-1.0, -1.0),
          child: Transform.translate(
            offset: Offset(-100.0, 0.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 60.0, 0.0),
              child: ClipRect(
                child: ImageFiltered(
                  imageFilter: ImageFilter.blur(
                    sigmaX: 40.0,
                    sigmaY: 40.0,
                  ),
                  child: Transform.translate(
                    offset: Offset(-100.0, 0.0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          0.0, 200.0, 0.0, 180.0),
                      child: Container(
                        width: 435.0,
                        height: 270.0,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0x651A1BEF), Color(0x6758FCFE)],
                            stops: [0.0, 1.0],
                            begin: AlignmentDirectional(0.0, -1.0),
                            end: AlignmentDirectional(0, 1.0),
                          ),
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
