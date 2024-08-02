import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/deputy_director/deputy_reject_feedback/deputy_reject_feedback_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'deputy_approve_nationalnews_model.dart';
export 'deputy_approve_nationalnews_model.dart';

class DeputyApproveNationalnewsWidget extends StatefulWidget {
  const DeputyApproveNationalnewsWidget({
    super.key,
    required this.advref,
    required this.roN,
    required this.subs,
    required this.url,
  });

  final DocumentReference? advref;
  final String? roN;
  final String? subs;
  final String? url;

  @override
  State<DeputyApproveNationalnewsWidget> createState() =>
      _DeputyApproveNationalnewsWidgetState();
}

class _DeputyApproveNationalnewsWidgetState
    extends State<DeputyApproveNationalnewsWidget> {
  late DeputyApproveNationalnewsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DeputyApproveNationalnewsModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<AdvertisementRecord>(
      stream: AdvertisementRecord.getDocument(widget.advref!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  FlutterFlowTheme.of(context).primary,
                ),
              ),
            ),
          );
        }
        final containerAdvertisementRecord = snapshot.data!;
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
              StreamBuilder<List<JoblogicRecord>>(
                stream: queryJoblogicRecord(
                  singleRecord: true,
                ),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 50.0,
                        height: 50.0,
                        child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(
                            FlutterFlowTheme.of(context).primary,
                          ),
                        ),
                      ),
                    );
                  }
                  List<JoblogicRecord> buttonJoblogicRecordList =
                      snapshot.data!;
                  // Return an empty Container when the item does not exist.
                  if (snapshot.data!.isEmpty) {
                    return Container();
                  }
                  final buttonJoblogicRecord =
                      buttonJoblogicRecordList.isNotEmpty
                          ? buttonJoblogicRecordList.first
                          : null;
                  return FFButtonWidget(
                    onPressed: () async {
                      if (FFAppState().selectednewspaperlist.length > 1) {
                        await widget.advref!.update({
                          ...createAdvertisementRecordData(
                            statusVendor: 10,
                            statusDeputy: 2,
                          ),
                          ...mapToFirestore(
                            {
                              'listofnewspaper':
                                  FFAppState().selectednewspaperlist,
                              'approvednationalnewspapers':
                                  FFAppState().listofnationalnewspapers,
                            },
                          ),
                        });

                        context.goNamed('Admin_Deputy_dashboard');

                        _model.sendmail = await SendemailCall.call(
                          recipientemail: 'megha@gully2global.com',
                          subject:
                              'Deputy Director  Approve  the Release order ( ${widget.roN} )and waiting for admin action.',
                          text: widget.subs,
                          attachmentUrl:
                              containerAdvertisementRecord.listofPdf.first,
                        );
                      } else {
                        await showDialog(
                          context: context,
                          builder: (alertDialogContext) {
                            return AlertDialog(
                              content: const Text('Please select any 2 Newspapers'),
                              actions: [
                                TextButton(
                                  onPressed: () =>
                                      Navigator.pop(alertDialogContext),
                                  child: const Text('Ok'),
                                ),
                              ],
                            );
                          },
                        );
                      }

                      setState(() {});
                    },
                    text: 'Approve',
                    options: FFButtonOptions(
                      width: MediaQuery.sizeOf(context).width * 0.3,
                      height: 50.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
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
                      hoverTextColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                  );
                },
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
                          child: DeputyRejectFeedbackWidget(
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
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
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
      },
    );
  }
}
