import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'back_one_model.dart';
export 'back_one_model.dart';

class BackOneWidget extends StatefulWidget {
  const BackOneWidget({super.key});

  @override
  State<BackOneWidget> createState() => _BackOneWidgetState();
}

class _BackOneWidgetState extends State<BackOneWidget> {
  late BackOneModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BackOneModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, -1.0),
      child: ClipRect(
        child: ImageFiltered(
          imageFilter: ImageFilter.blur(
            sigmaX: 40.0,
            sigmaY: 40.0,
          ),
          child: Transform.translate(
            offset: Offset(0.0, -100.0),
            child: Container(
              width: double.infinity,
              height: 229.0,
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
    );
  }
}
