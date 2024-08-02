import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'assitant_send_aprroval_model.dart';
export 'assitant_send_aprroval_model.dart';

class AssitantSendAprrovalWidget extends StatefulWidget {
  const AssitantSendAprrovalWidget({
    super.key,
    required this.userrerf,
    required this.approved,
  });

  final DocumentReference? userrerf;
  final ListofapprovedStruct? approved;

  @override
  State<AssitantSendAprrovalWidget> createState() =>
      _AssitantSendAprrovalWidgetState();
}

class _AssitantSendAprrovalWidgetState
    extends State<AssitantSendAprrovalWidget> {
  late AssitantSendAprrovalModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AssitantSendAprrovalModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Form(
      key: _model.formKey,
      autovalidateMode: AutovalidateMode.disabled,
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
        child: StreamBuilder<UsersRecord>(
          stream: UsersRecord.getDocument(widget.userrerf!),
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
            final containerUsersRecord = snapshot.data!;
            return Container(
              width: MediaQuery.sizeOf(context).width * 0.989,
              height: 350.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                border: Border.all(
                  color: FlutterFlowTheme.of(context).primary,
                ),
              ),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 10.0),
                          child: Container(
                            width: 65.0,
                            height: 10.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).primary,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                        child: Text(
                          'Add Notes',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Spectral',
                                    color: FlutterFlowTheme.of(context).primary,
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                        child: TextFormField(
                          controller: _model.textController,
                          focusNode: _model.textFieldFocusNode,
                          autofocus: false,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Spectral',
                                  color: const Color(0xFF999999),
                                  letterSpacing: 0.0,
                                ),
                            hintText: 'Please add your notes ..',
                            hintStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Spectral',
                                  color: const Color(0xFF999999),
                                  letterSpacing: 0.0,
                                ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).tertiary,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primary,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Spectral',
                                    letterSpacing: 0.0,
                                  ),
                          maxLines: 3,
                          validator: _model.textControllerValidator
                              .asValidator(context),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
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
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  List<AdmindataRecord>
                                      buttonAdmindataRecordList =
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
                                      if (_model.formKey.currentState == null ||
                                          !_model.formKey.currentState!
                                              .validate()) {
                                        return;
                                      }

                                      await buttonAdmindataRecord!.reference
                                          .update({
                                        ...mapToFirestore(
                                          {
                                            'notesheetno':
                                                FieldValue.increment(1),
                                          },
                                        ),
                                      });

                                      var approvedAddRecordReference =
                                          ApprovedAddRecord.collection.doc();
                                      await approvedAddRecordReference.set({
                                        ...createApprovedAddRecordData(
                                          deputyStatus: 0,
                                          assitantStattus: 3,
                                          assitantFeedback:
                                              _model.textController.text,
                                          totalAmount: valueOrDefault<double>(
                                            functions.addAmount(FFAppState()
                                                .approvedbyassistant
                                                .toList()),
                                            0.0,
                                          ),
                                          ispending: true,
                                          dateofAproval: getCurrentTimestamp,
                                          division: valueOrDefault<int>(
                                            () {
                                              if (valueOrDefault<bool>(
                                                  currentUserDocument?.isLdc1,
                                                  false)) {
                                                return 1;
                                              } else if (valueOrDefault<bool>(
                                                  currentUserDocument?.isLdc2,
                                                  false)) {
                                                return 2;
                                              } else {
                                                return 3;
                                              }
                                            }(),
                                            0,
                                          ),
                                          notesheetString:
                                              'NS/DIPR-${buttonAdmindataRecord.notesheetno.toString()}',
                                          directorStatus: 10,
                                          faoStatus: 10,
                                          statusSecretary: 10,
                                          dateTimeAssistant:
                                              getCurrentTimestamp,
                                          userref: widget.userrerf,
                                        ),
                                        ...mapToFirestore(
                                          {
                                            'adddata':
                                                getListofapprovedListFirestoreData(
                                              FFAppState()
                                                  .approvedbyassistant
                                                  .where((e) =>
                                                      e.userrerf ==
                                                      widget.userrerf)
                                                  .toList(),
                                            ),
                                          },
                                        ),
                                      });
                                      _model.aprrovedData = ApprovedAddRecord
                                          .getDocumentFromData({
                                        ...createApprovedAddRecordData(
                                          deputyStatus: 0,
                                          assitantStattus: 3,
                                          assitantFeedback:
                                              _model.textController.text,
                                          totalAmount: valueOrDefault<double>(
                                            functions.addAmount(FFAppState()
                                                .approvedbyassistant
                                                .toList()),
                                            0.0,
                                          ),
                                          ispending: true,
                                          dateofAproval: getCurrentTimestamp,
                                          division: valueOrDefault<int>(
                                            () {
                                              if (valueOrDefault<bool>(
                                                  currentUserDocument?.isLdc1,
                                                  false)) {
                                                return 1;
                                              } else if (valueOrDefault<bool>(
                                                  currentUserDocument?.isLdc2,
                                                  false)) {
                                                return 2;
                                              } else {
                                                return 3;
                                              }
                                            }(),
                                            0,
                                          ),
                                          notesheetString:
                                              'NS/DIPR-${buttonAdmindataRecord.notesheetno.toString()}',
                                          directorStatus: 10,
                                          faoStatus: 10,
                                          statusSecretary: 10,
                                          dateTimeAssistant:
                                              getCurrentTimestamp,
                                          userref: widget.userrerf,
                                        ),
                                        ...mapToFirestore(
                                          {
                                            'adddata':
                                                getListofapprovedListFirestoreData(
                                              FFAppState()
                                                  .approvedbyassistant
                                                  .where((e) =>
                                                      e.userrerf ==
                                                      widget.userrerf)
                                                  .toList(),
                                            ),
                                          },
                                        ),
                                      }, approvedAddRecordReference);

                                      await buttonAdmindataRecord.reference
                                          .update(createAdmindataRecordData(
                                        budget: valueOrDefault<double>(
                                          functions.subtractBudget(
                                              buttonAdmindataRecord.budget,
                                              _model.aprrovedData!.totalAmount),
                                          0.0,
                                        ),
                                      ));

                                      await BugdetDetailsRecord.collection
                                          .doc()
                                          .set(createBugdetDetailsRecordData(
                                            amountDeducted: _model
                                                .aprrovedData?.totalAmount,
                                            date: getCurrentTimestamp,
                                            invoiceRoNumber: _model
                                                .aprrovedData?.notesheetString,
                                            invoice: () {
                                              if (valueOrDefault<bool>(
                                                  currentUserDocument?.isLdc1,
                                                  false)) {
                                                return 'UDC 2';
                                              } else if (valueOrDefault<bool>(
                                                  currentUserDocument?.isLdc2,
                                                  false)) {
                                                return 'LDC ';
                                              } else {
                                                return 'UDC 1';
                                              }
                                            }(),
                                          ));

                                      var notificationAdminRecordReference =
                                          NotificationAdminRecord.collection
                                              .doc();
                                      await notificationAdminRecordReference
                                          .set(
                                              createNotificationAdminRecordData(
                                        title:
                                            'The notesheet for a Request Order  (RO) is ready for your review following approval by the Dealing Assistant.  Please review and take action.',
                                        created: getCurrentTimestamp,
                                        isdeputy: true,
                                      ));
                                      _model.notifications = NotificationAdminRecord
                                          .getDocumentFromData(
                                              createNotificationAdminRecordData(
                                                title:
                                                    'The notesheet for a Request Order  (RO) is ready for your review following approval by the Dealing Assistant.  Please review and take action.',
                                                created: getCurrentTimestamp,
                                                isdeputy: true,
                                              ),
                                              notificationAdminRecordReference);
                                      await SendemailCall.call(
                                        recipientemail: 'rsmx141@gmail.com',
                                        subject:
                                            '\"Notesheet Review and Action Needed',
                                        text:
                                            'A notesheet following the Dealing Assistant\'s approval is now  ready for your review. Your insights and actions on this matter are crucial for the  next steps.',
                                      );
                                      setState(() {
                                        FFAppState().testlist = FFAppState()
                                            .approvedbyassistant
                                            .where((e) =>
                                                e.userrerf != widget.userrerf)
                                            .toList()
                                            .cast<ListofapprovedStruct>();
                                      });
                                      setState(() {
                                        FFAppState().approvedbyassistant = [];
                                      });
                                      setState(() {
                                        FFAppState().approvedbyassistant =
                                            FFAppState()
                                                .testlist
                                                .toList()
                                                .cast<ListofapprovedStruct>();
                                        FFAppState().testlist = [];
                                      });
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            'Notesheet has been created..',
                                            style: TextStyle(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                            ),
                                          ),
                                          duration:
                                              const Duration(milliseconds: 4000),
                                          backgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                        ),
                                      );

                                      context.pushNamed('ClerkDashboard');

                                      setState(() {});
                                    },
                                    text: 'Add ',
                                    options: FFButtonOptions(
                                      height: 30.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: const Color(0xFF60E44B),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Spectral',
                                            color: Colors.white,
                                            letterSpacing: 0.0,
                                          ),
                                      elevation: 3.0,
                                      borderSide: const BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
