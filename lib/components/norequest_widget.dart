import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'norequest_model.dart';
export 'norequest_model.dart';

class NorequestWidget extends StatefulWidget {
  const NorequestWidget({super.key});

  @override
  State<NorequestWidget> createState() => _NorequestWidgetState();
}

class _NorequestWidgetState extends State<NorequestWidget> {
  late NorequestModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NorequestModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(16.0),
        border: Border.all(
          color: const Color(0xFFBEBEBE),
        ),
      ),
      child: Align(
        alignment: const AlignmentDirectional(0.0, 0.0),
        child: Text(
          'No  Request',
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Spectral',
                fontSize: 20.0,
                letterSpacing: 0.0,
              ),
        ),
      ),
    );
  }
}
