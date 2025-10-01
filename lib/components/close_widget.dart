import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'close_model.dart';
export 'close_model.dart';

class CloseWidget extends StatefulWidget {
  const CloseWidget({super.key});

  @override
  State<CloseWidget> createState() => _CloseWidgetState();
}

class _CloseWidgetState extends State<CloseWidget> {
  late CloseModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CloseModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 47.0, 14.0, 0.0),
      child: Container(
        width: 24.0,
        height: 24.0,
        decoration: BoxDecoration(),
        child: Icon(
          FFIcons.kvector,
          color: FlutterFlowTheme.of(context).primaryText,
          size: 16.0,
        ),
      ),
    );
  }
}
