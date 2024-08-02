import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/deputy_director/deputy_reject_feedback/deputy_reject_feedback_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'deputy_approve_model.dart';
export 'deputy_approve_model.dart';

class DeputyApproveWidget extends StatefulWidget {
  const DeputyApproveWidget({
    super.key,
    required this.advref,
  });

  final DocumentReference? advref;

  @override
  State<DeputyApproveWidget> createState() => _DeputyApproveWidgetState();
}

class _DeputyApproveWidgetState extends State<DeputyApproveWidget> {
  late DeputyApproveModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DeputyApproveModel());
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
                      await widget.advref!.update({
                        ...createAdvertisementRecordData(
                          isrequesPending: false,
                          statusDeputy: 2,
                          approved: true,
                        ),
                        ...mapToFirestore(
                          {
                            'allotednewspapers': containerAdvertisementRecord
                                .caseworkerdraftnewspapers,
                          },
                        ),
                      });
                      _model.documents =
                          await queryNewspaperJobAllocationRecordOnce(
                        queryBuilder: (newspaperJobAllocationRecord) =>
                            newspaperJobAllocationRecord.where(
                          'adref',
                          isEqualTo: widget.advref,
                        ),
                      );
                      while (FFAppState().loopmin <
                          valueOrDefault<int>(
                            _model.documents?.length,
                            0,
                          )) {
                        await _model.documents![FFAppState().loopmin].reference
                            .update(createNewspaperJobAllocationRecordData(
                          aprovedcw: true,
                        ));
                        setState(() {
                          FFAppState().loopmin = FFAppState().loopmin + 1;
                        });
                      }
                      setState(() {
                        FFAppState().loopmin = 0;
                      });

                      await NotificationAdminRecord.collection.doc().set({
                        ...createNotificationAdminRecordData(
                          title:
                              'Advt-Cell created Release order, awaiting your approval',
                          documentref: widget.advref,
                          created: getCurrentTimestamp,
                          isVendor: true,
                        ),
                        ...mapToFirestore(
                          {
                            'userref': containerAdvertisementRecord
                                .caseworkerdraftnewspapers,
                          },
                        ),
                      });
                      _model.sendmail = await SendemailCall.call(
                        recipientemail: 'rajatjiedm@gmail.com',
                        subject:
                            'Deputy Director accept the Release order ( ${valueOrDefault<String>(
                          containerAdvertisementRecord.releaseOrderNo,
                          'RO_001',
                        )} )and waiting for  vendor response.',
                        text: 'The Advertisement Has Been Approved',
                      );

                      context.pushNamed('Deputy_dashboard');

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
