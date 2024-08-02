import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/caseworker/caseworker_reject_feedback/caseworker_reject_feedback_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'case_worker_approve_model.dart';
export 'case_worker_approve_model.dart';

class CaseWorkerApproveWidget extends StatefulWidget {
  const CaseWorkerApproveWidget({
    super.key,
    required this.advref,
    required this.roNo,
    required this.sub,
  });

  final DocumentReference? advref;
  final String? roNo;
  final String? sub;

  @override
  State<CaseWorkerApproveWidget> createState() =>
      _CaseWorkerApproveWidgetState();
}

class _CaseWorkerApproveWidgetState extends State<CaseWorkerApproveWidget> {
  late CaseWorkerApproveModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CaseWorkerApproveModel());
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
          FFButtonWidget(
            onPressed: () async {
              await widget.advref!.update(createAdvertisementRecordData(
                isDarft: false,
                statusCaseworker: 2,
                isCaseWorker: false,
                dateOfApplication: getCurrentTimestamp,
                isrequesPending: false,
              ));
              _model.sendmail = await SendemailCall.call(
                recipientemail: 'megha@gully2global.com',
                subject:
                    'Case worker accept the Release order ( ${widget.roNo} )and waiting for admin action.',
                text: widget.sub,
              );

              context.pushNamed(
                'Caseworker_Request_type',
                queryParameters: {
                  'docRef': serializeParam(
                    widget.advref,
                    ParamType.DocumentReference,
                  ),
                }.withoutNulls,
              );

              setState(() {});
            },
            text: 'Approve',
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
          Builder(
            builder: (context) => FFButtonWidget(
              onPressed: () async {
                await showDialog(
                  context: context,
                  builder: (dialogContext) {
                    return Dialog(
                      elevation: 0,
                      insetPadding: EdgeInsets.zero,
                      backgroundColor: Colors.transparent,
                      alignment: const AlignmentDirectional(0.0, 0.0)
                          .resolve(Directionality.of(context)),
                      child: CaseworkerRejectFeedbackWidget(
                        advref: widget.advref!,
                      ),
                    );
                  },
                ).then((value) => setState(() {}));
              },
              text: 'Reject',
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
                hoverColor: FlutterFlowTheme.of(context).error,
                hoverTextColor:
                    FlutterFlowTheme.of(context).secondaryBackground,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
