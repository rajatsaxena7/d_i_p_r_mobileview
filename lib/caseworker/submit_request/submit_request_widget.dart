import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'submit_request_model.dart';
export 'submit_request_model.dart';

class SubmitRequestWidget extends StatefulWidget {
  const SubmitRequestWidget({
    super.key,
    required this.advref,
  });

  final DocumentReference? advref;

  @override
  State<SubmitRequestWidget> createState() => _SubmitRequestWidgetState();
}

class _SubmitRequestWidgetState extends State<SubmitRequestWidget> {
  late SubmitRequestModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SubmitRequestModel());
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
      height: MediaQuery.sizeOf(context).height * 1.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Invoice Raised',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Spectral',
                  fontSize: 20.0,
                  letterSpacing: 0.0,
                ),
          ),
          Lottie.asset(
            'assets/lottie_animations/Animation_-_1711111861466.json',
            width: 150.0,
            height: 130.0,
            fit: BoxFit.cover,
            animate: true,
          ),
          FFButtonWidget(
            onPressed: () async {
              context.pushNamed('vendorDashboardreal');
            },
            text: ' Home',
            options: FFButtonOptions(
              width: MediaQuery.sizeOf(context).width * 0.3,
              height: 50.0,
              padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
              iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
              color: FlutterFlowTheme.of(context).secondaryBackground,
              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                    fontFamily: 'Spectral',
                    color: FlutterFlowTheme.of(context).primary,
                    fontSize: 20.0,
                    letterSpacing: 0.0,
                  ),
              elevation: 3.0,
              borderSide: BorderSide(
                color: FlutterFlowTheme.of(context).primary,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(8.0),
              hoverColor: const Color(0xFF03C32E),
              hoverTextColor: FlutterFlowTheme.of(context).secondaryBackground,
            ),
          ),
        ],
      ),
    );
  }
}
