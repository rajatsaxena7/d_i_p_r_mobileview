import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'allotingcasewoker_model.dart';
export 'allotingcasewoker_model.dart';

class AllotingcasewokerWidget extends StatefulWidget {
  const AllotingcasewokerWidget({
    super.key,
    required this.advertisementref,
    required this.allwaitinglist,
    required this.joblogic,
  });

  final DocumentReference? advertisementref;
  final List<DocumentReference>? allwaitinglist;
  final DocumentReference? joblogic;

  @override
  State<AllotingcasewokerWidget> createState() =>
      _AllotingcasewokerWidgetState();
}

class _AllotingcasewokerWidgetState extends State<AllotingcasewokerWidget> {
  late AllotingcasewokerModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AllotingcasewokerModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.joblogicdocumentpageload = await queryJoblogicRecordOnce(
        singleRecord: true,
      ).then((s) => s.firstOrNull);

      var newspaperJobAllocationRecordReference1 =
          NewspaperJobAllocationRecord.collection.doc();
      await newspaperJobAllocationRecordReference1
          .set(createNewspaperJobAllocationRecordData(
        timeofallotment: getCurrentTimestamp,
        acknowledgedboolean: false,
        newspaperrefuserref: widget.allwaitinglist?.first,
        adref: widget.advertisementref,
        completed: false,
        aprovedcw: false,
        ronumber:
            functions.rOnumberNEW(_model.joblogicdocumentpageload!.ronumbers),
        invoiceraised: false,
        duetime: functions.return7pmdatetime(getCurrentTimestamp),
      ));
      _model.firstdocument = NewspaperJobAllocationRecord.getDocumentFromData(
          createNewspaperJobAllocationRecordData(
            timeofallotment: getCurrentTimestamp,
            acknowledgedboolean: false,
            newspaperrefuserref: widget.allwaitinglist?.first,
            adref: widget.advertisementref,
            completed: false,
            aprovedcw: false,
            ronumber: functions
                .rOnumberNEW(_model.joblogicdocumentpageload!.ronumbers),
            invoiceraised: false,
            duetime: functions.return7pmdatetime(getCurrentTimestamp),
          ),
          newspaperJobAllocationRecordReference1);

      await _model.joblogicdocumentpageload!.reference.update({
        ...mapToFirestore(
          {
            'ronumbers': FieldValue.increment(1),
          },
        ),
      });
      _model.joblogicdocumentsecond = await queryJoblogicRecordOnce(
        singleRecord: true,
      ).then((s) => s.firstOrNull);

      var newspaperJobAllocationRecordReference2 =
          NewspaperJobAllocationRecord.collection.doc();
      await newspaperJobAllocationRecordReference2
          .set(createNewspaperJobAllocationRecordData(
        timeofallotment: getCurrentTimestamp,
        acknowledgedboolean: false,
        newspaperrefuserref: widget.allwaitinglist?[1],
        adref: widget.advertisementref,
        completed: false,
        aprovedcw: false,
        ronumber:
            functions.rOnumberNEW(_model.joblogicdocumentsecond!.ronumbers),
        invoiceraised: false,
        duetime: functions.return7pmdatetime(getCurrentTimestamp),
      ));
      _model.seconddocument = NewspaperJobAllocationRecord.getDocumentFromData(
          createNewspaperJobAllocationRecordData(
            timeofallotment: getCurrentTimestamp,
            acknowledgedboolean: false,
            newspaperrefuserref: widget.allwaitinglist?[1],
            adref: widget.advertisementref,
            completed: false,
            aprovedcw: false,
            ronumber:
                functions.rOnumberNEW(_model.joblogicdocumentsecond!.ronumbers),
            invoiceraised: false,
            duetime: functions.return7pmdatetime(getCurrentTimestamp),
          ),
          newspaperJobAllocationRecordReference2);

      await _model.joblogicdocumentsecond!.reference.update({
        ...mapToFirestore(
          {
            'ronumbers': FieldValue.increment(1),
          },
        ),
      });

      await widget.joblogic!.update({
        ...mapToFirestore(
          {
            'waitingquuelist':
                functions.remove2andadd2atend(widget.allwaitinglist?.toList()),
          },
        ),
      });
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<JoblogicRecord>>(
      stream: queryJoblogicRecord(
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<JoblogicRecord> allotingcasewokerJoblogicRecordList =
            snapshot.data!;
        final allotingcasewokerJoblogicRecord =
            allotingcasewokerJoblogicRecordList.isNotEmpty
                ? allotingcasewokerJoblogicRecordList.first
                : null;
        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: SafeArea(
              top: true,
              child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    if (!_model.isvisible)
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 20.0, 0.0, 20.0),
                        child: Text(
                          'Allotted To :',
                          style: FlutterFlowTheme.of(context)
                              .displayMedium
                              .override(
                                fontFamily: 'Spectral',
                                fontSize: 25.0,
                                letterSpacing: 0.0,
                              ),
                        ),
                      ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Builder(
                          builder: (context) {
                            final allotedlist = functions
                                    .returnfirsttwousers(
                                        widget.allwaitinglist?.toList())
                                    ?.toList() ??
                                [];
                            return FlutterFlowDataTable<DocumentReference>(
                              controller: _model.paginatedDataTableController,
                              data: allotedlist,
                              numRows: allotedlist.length,
                              columnsBuilder: (onSortChanged) => [
                                DataColumn2(
                                  label: DefaultTextStyle.merge(
                                    softWrap: true,
                                    child: Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Text(
                                        'Sr No.',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .override(
                                              fontFamily: 'Spectral',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                                DataColumn2(
                                  label: DefaultTextStyle.merge(
                                    softWrap: true,
                                    child: Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Text(
                                        'Newspaper Name',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .override(
                                              fontFamily: 'Spectral',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                              dataRowBuilder: (allotedlistItem,
                                      allotedlistIndex,
                                      selected,
                                      onSelectChanged) =>
                                  DataRow(
                                color: MaterialStateProperty.all(
                                  allotedlistIndex % 2 == 0
                                      ? FlutterFlowTheme.of(context)
                                          .secondaryBackground
                                      : FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                ),
                                cells: [
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Text(
                                      functions
                                          .index(allotedlistIndex)
                                          .toString(),
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Spectral',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: StreamBuilder<UsersRecord>(
                                      stream: UsersRecord.getDocument(
                                          allotedlistItem),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        final textUsersRecord = snapshot.data!;
                                        return Text(
                                          valueOrDefault<String>(
                                            textUsersRecord.displayName,
                                            'Display Name is not set',
                                          ),
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Spectral',
                                                letterSpacing: 0.0,
                                              ),
                                        );
                                      },
                                    ),
                                  ),
                                ].map((c) => DataCell(c)).toList(),
                              ),
                              paginated: false,
                              selectable: false,
                              height: 50.0,
                              headingRowHeight: 56.0,
                              dataRowHeight: 48.0,
                              columnSpacing: 20.0,
                              headingRowColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                              borderRadius: BorderRadius.circular(16.0),
                              addHorizontalDivider: true,
                              addTopAndBottomDivider: true,
                              hideDefaultHorizontalDivider: true,
                              horizontalDividerColor:
                                  FlutterFlowTheme.of(context).tertiary,
                              horizontalDividerThickness: 2.0,
                              addVerticalDivider: true,
                              verticalDividerColor:
                                  FlutterFlowTheme.of(context).tertiary,
                              verticalDividerThickness: 3.0,
                            );
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                      child: StreamBuilder<List<AdmindataRecord>>(
                        stream: queryAdmindataRecord(
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
                          List<AdmindataRecord> buttonAdmindataRecordList =
                              snapshot.data!;
                          // Return an empty Container when the item does not exist.
                          if (snapshot.data!.isEmpty) {
                            return Container();
                          }
                          final buttonAdmindataRecord =
                              buttonAdmindataRecordList.isNotEmpty
                                  ? buttonAdmindataRecordList.first
                                  : null;
                          return FFButtonWidget(
                            onPressed: () async {
                              var confirmDialogResponse =
                                  await showDialog<bool>(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: const Text('Alert!'),
                                            content: const Text(
                                                'Are you sure you want to send it to respective Newspapers  ?'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext, false),
                                                child: const Text('Cancel'),
                                              ),
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext, true),
                                                child: const Text('Confirm'),
                                              ),
                                            ],
                                          );
                                        },
                                      ) ??
                                      false;
                              if (confirmDialogResponse) {
                                await widget.advertisementref!.update({
                                  ...createAdvertisementRecordData(
                                    releaseOrderNo: functions.rOnumberNEW(
                                        buttonAdmindataRecord!.ronumber),
                                    statusDeputy: 2,
                                    statusVendor: 1,
                                    statusCaseworker: 5,
                                    approved: true,
                                    isCaseWorker: true,
                                  ),
                                  ...mapToFirestore(
                                    {
                                      'allotednewspapers':
                                          functions.returnfirsttwousers(
                                              widget.allwaitinglist?.toList()),
                                    },
                                  ),
                                });

                                await _model.firstdocument!.reference.update(
                                    createNewspaperJobAllocationRecordData(
                                  aprovedcw: true,
                                ));

                                await _model.seconddocument!.reference.update(
                                    createNewspaperJobAllocationRecordData(
                                  aprovedcw: true,
                                ));

                                await NotificationAdminRecord.collection
                                    .doc()
                                    .set({
                                  ...createNotificationAdminRecordData(
                                    title:
                                        '\"A new Request Order (RO) for  advertisement publication has been received. Please review and take necessary action.',
                                    documentref: widget.advertisementref,
                                    created: getCurrentTimestamp,
                                    isVendor: true,
                                  ),
                                  ...mapToFirestore(
                                    {
                                      'userref': functions.returnfirsttwousers(
                                          widget.allwaitinglist?.toList()),
                                    },
                                  ),
                                });
                                await showDialog(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: const Text('Success!!'),
                                      content: const Text(
                                          'The Advertisement has been sent to respective Newspapers'),
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

                                context.goNamed('Caseworker_dashboard');
                              }
                            },
                            text: 'Send to Newspaper',
                            options: FFButtonOptions(
                              width: 200.0,
                              height: 50.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Spectral',
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                  ),
                              elevation: 3.0,
                              borderSide: const BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          );
                        },
                      ),
                    ),
                    StreamBuilder<List<AdmindataRecord>>(
                      stream: queryAdmindataRecord(
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
                        List<AdmindataRecord> buttonAdmindataRecordList =
                            snapshot.data!;
                        // Return an empty Container when the item does not exist.
                        if (snapshot.data!.isEmpty) {
                          return Container();
                        }
                        final buttonAdmindataRecord =
                            buttonAdmindataRecordList.isNotEmpty
                                ? buttonAdmindataRecordList.first
                                : null;
                        return FFButtonWidget(
                          onPressed: () async {
                            var confirmDialogResponse = await showDialog<bool>(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: const Text('Alert !!!'),
                                      content: const Text(
                                          'Are you sure you want to send this for approval ?'),
                                      actions: [
                                        TextButton(
                                          onPressed: () => Navigator.pop(
                                              alertDialogContext, false),
                                          child: const Text('Cancel'),
                                        ),
                                        TextButton(
                                          onPressed: () => Navigator.pop(
                                              alertDialogContext, true),
                                          child: const Text('Confirm'),
                                        ),
                                      ],
                                    );
                                  },
                                ) ??
                                false;
                            if (confirmDialogResponse) {
                              await widget.advertisementref!.update({
                                ...createAdvertisementRecordData(
                                  statusVendor: 1,
                                  statusDeputy: 0,
                                  manuallyallotted: false,
                                  releaseOrderNo: functions.rOnumberNEW(
                                      buttonAdmindataRecord!.ronumber),
                                  isrequesPending: true,
                                  statusCaseworker: 2,
                                  isCaseWorker: true,
                                  approved: false,
                                ),
                                ...mapToFirestore(
                                  {
                                    'caseworkerdraftnewspapers':
                                        functions.returnfirsttwousers(
                                            widget.allwaitinglist?.toList()),
                                  },
                                ),
                              });

                              await NotificationAdminRecord.collection
                                  .doc()
                                  .set(createNotificationAdminRecordData(
                                    title:
                                        'A new Request Order (RO) has been  submitted for your approval. Please review and take necessary action.',
                                    documentref: widget.advertisementref,
                                    created: getCurrentTimestamp,
                                    isdeputy: true,
                                  ));
                              await SendemailCall.call(
                                recipientemail: 'rsmx141@gmail.com',
                                subject: 'New Request Order Approval Needed',
                                text:
                                    ' A new Request Order (RO) has been submitted for your approval.  Your timely review and action on this matter would be greatly appreciated.',
                              );

                              context.pushNamed('Caseworker_dashboard');
                            }
                          },
                          text: 'Send to Deputy Director',
                          options: FFButtonOptions(
                            width: 200.0,
                            height: 50.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Spectral',
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 3.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
