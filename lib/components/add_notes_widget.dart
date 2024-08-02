import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'add_notes_model.dart';
export 'add_notes_model.dart';

class AddNotesWidget extends StatefulWidget {
  const AddNotesWidget({
    super.key,
    this.parameter1,
    this.parameter2,
    required this.parameter3,
  });

  final DocumentReference? parameter1;
  final double? parameter2;
  final DocumentReference? parameter3;

  @override
  State<AddNotesWidget> createState() => _AddNotesWidgetState();
}

class _AddNotesWidgetState extends State<AddNotesWidget> {
  late AddNotesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddNotesModel());

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
    return Form(
      key: _model.formKey,
      autovalidateMode: AutovalidateMode.disabled,
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
        child: Container(
          width: MediaQuery.sizeOf(context).width * 1.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            border: Border.all(
              color: FlutterFlowTheme.of(context).primary,
            ),
          ),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Add Notes',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Spectral',
                          color: FlutterFlowTheme.of(context).primary,
                          fontSize: 20.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                  child: TextFormField(
                    controller: _model.textController,
                    focusNode: _model.textFieldFocusNode,
                    autofocus: false,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Spectral',
                                color: const Color(0xFF999999),
                                letterSpacing: 0.0,
                              ),
                      hintText: 'The Content is about .....',
                      hintStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
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
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Spectral',
                          letterSpacing: 0.0,
                        ),
                    maxLines: 4,
                    validator:
                        _model.textControllerValidator.asValidator(context),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 25.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 15.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            if (_model.formKey.currentState == null ||
                                !_model.formKey.currentState!.validate()) {
                              return;
                            }
                            var confirmDialogResponse = await showDialog<bool>(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: const Text('Alert !!'),
                                      content: const Text(
                                          'Are you sure you want to reject ?'),
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
                              if (valueOrDefault<bool>(
                                  currentUserDocument?.isDeputy, false)) {
                                await widget.parameter1!
                                    .update(createApprovedAddRecordData(
                                  deputyStatus: 1,
                                  feedbackDeputy: _model.textController.text,
                                  dateofAproval: getCurrentTimestamp,
                                  dateTimeDD: getCurrentTimestamp,
                                ));

                                context.pushNamed('Deputy_dashboard');
                              } else if (valueOrDefault<bool>(
                                  currentUserDocument?.isDirector, false)) {
                                await widget.parameter1!
                                    .update(createApprovedAddRecordData(
                                  directorStatus: 1,
                                  feedbackDirector: _model.textController.text,
                                  dateofAproval: getCurrentTimestamp,
                                  datetimeDirector: getCurrentTimestamp,
                                ));

                                context.pushNamed('director_dashBoard');
                              } else if (valueOrDefault<bool>(
                                  currentUserDocument?.isFoa, false)) {
                                await widget.parameter1!
                                    .update(createApprovedAddRecordData(
                                  faoStatus: 1,
                                  feedbackFao: _model.textController.text,
                                  dateofAproval: getCurrentTimestamp,
                                  datetimeFao: getCurrentTimestamp,
                                ));

                                context.goNamed('Fao_dashBoard');
                              } else if (valueOrDefault<bool>(
                                  currentUserDocument?.isSc, false)) {
                                await widget.parameter1!
                                    .update(createApprovedAddRecordData(
                                  statusSecretary: 1,
                                  feedbacksc: _model.textController.text,
                                  dateofAproval: getCurrentTimestamp,
                                  datetimeSc: getCurrentTimestamp,
                                ));

                                context.goNamed('Secretary_Dashboard');
                              }
                            }
                          },
                          text: 'Reject',
                          options: FFButtonOptions(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: const Color(0xFFF13E3E),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Spectral',
                                  color: Colors.white,
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 3.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                        ),
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          if (_model.formKey.currentState == null ||
                              !_model.formKey.currentState!.validate()) {
                            return;
                          }
                          var confirmDialogResponse = await showDialog<bool>(
                                context: context,
                                builder: (alertDialogContext) {
                                  return AlertDialog(
                                    title: const Text('Alert !!'),
                                    content: const Text(
                                        'Are you sure you want to approve ?'),
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
                            if (valueOrDefault<bool>(
                                currentUserDocument?.isDeputy, false)) {
                              await widget.parameter1!
                                  .update(createApprovedAddRecordData(
                                deputyStatus: 2,
                                feedbackDeputy: _model.textController.text,
                                ispending: true,
                                dateofAproval: getCurrentTimestamp,
                                directorStatus: 0,
                                dateTimeDD: getCurrentTimestamp,
                              ));

                              await NotificationAdminRecord.collection
                                  .doc()
                                  .set(createNotificationAdminRecordData(
                                    title:
                                        'Invoice is Created .It Requires Your Action',
                                    created: getCurrentTimestamp,
                                    isFoa: true,
                                  ));
                              await SendemailCall.call(
                                recipientemail: 'rsmx141@gmail.com',
                                subject:
                                    'Action Required: Bill Raised for Request Order',
                                text:
                                    '\"A bill for a Request Order (RO) has been submitted. Your prompt  review and processing of this bill are required',
                              );

                              context.pushNamed('Deputy_dashboard');
                            } else if (valueOrDefault<bool>(
                                currentUserDocument?.isDirector, false)) {
                              await widget.parameter1!
                                  .update(createApprovedAddRecordData(
                                directorStatus: 2,
                                feedbackDirector: _model.textController.text,
                                faoStatus: 0,
                                datetimeDirector: getCurrentTimestamp,
                              ));

                              await NotificationAdminRecord.collection
                                  .doc()
                                  .set(createNotificationAdminRecordData(
                                    title:
                                        'Invoice is Created .It Requires Your Action',
                                    created: getCurrentTimestamp,
                                    isDirector: true,
                                  ));
                              await SendemailCall.call(
                                recipientemail: 'rsmx141@gmail.com',
                                subject:
                                    'Action Required: Bill Raised for Request Order',
                                text:
                                    '\"A bill for a Request Order (RO) has been submitted. Your prompt  review and processing of this bill are required',
                              );

                              context.pushNamed('director_dashBoard');
                            } else if (valueOrDefault<bool>(
                                currentUserDocument?.isFoa, false)) {
                              await widget.parameter1!
                                  .update(createApprovedAddRecordData(
                                feedbackFao: _model.textController.text,
                                dateofAproval: getCurrentTimestamp,
                                totalAmount: widget.parameter2,
                                isAssistantpending: false,
                                datetimeFao: getCurrentTimestamp,
                              ));
                              if (widget.parameter2! > 35000.0) {
                                await widget.parameter3!
                                    .update(createApprovedAddRecordData(
                                  statusSecretary: 0,
                                  faoStatus: 2,
                                ));

                                await NotificationAdminRecord.collection
                                    .doc()
                                    .set(createNotificationAdminRecordData(
                                      title:
                                          'Invoice is Created .It Requires Your Action',
                                      created: getCurrentTimestamp,
                                      issecretary: true,
                                    ));
                                await SendemailCall.call(
                                  recipientemail: 'rsmx141@gmail.com',
                                  subject:
                                      'Action Required: Bill Raised for Request Order',
                                  text:
                                      '\"A bill for a Request Order (RO) has been submitted. Your prompt  review and processing of this bill are required',
                                );
                              } else {
                                await widget.parameter1!
                                    .update(createApprovedAddRecordData(
                                  isaprroved: true,
                                  deputyStatus: 5,
                                  directorStatus: 5,
                                  faoStatus: 5,
                                  accountantStatus: 1,
                                  ispending: false,
                                ));

                                await NotificationAdminRecord.collection
                                    .doc()
                                    .set(createNotificationAdminRecordData(
                                      title:
                                          'Final notesheet has been approved',
                                      created: getCurrentTimestamp,
                                      isdeputy: true,
                                      isFoa: true,
                                      isDirector: true,
                                      isVendor: true,
                                      isldc1: true,
                                      isldc2: true,
                                      isudc: true,
                                      assistantdashboard: true,
                                    ));
                                await SendemailCall.call(
                                  recipientemail: 'rajatjiedm@gmail.com',
                                  subject: 'Final Notesheet approved',
                                  text:
                                      'Final Notesheet has been approved.plz Check',
                                );
                              }

                              context.goNamed('Fao_dashBoard');
                            } else if (valueOrDefault<bool>(
                                currentUserDocument?.isSc, false)) {
                              await NotificationAdminRecord.collection
                                  .doc()
                                  .set(createNotificationAdminRecordData(
                                    title: 'Final notesheet has been approved',
                                    created: getCurrentTimestamp,
                                    isdeputy: true,
                                    isFoa: true,
                                    isDirector: true,
                                    issecretary: true,
                                    isVendor: true,
                                    isldc1: true,
                                    isldc2: true,
                                    isudc: true,
                                    assistantdashboard: true,
                                  ));
                              await SendemailCall.call(
                                recipientemail: 'rajatjiedm@gmail.com',
                                subject: 'Final Notesheet approved',
                                text:
                                    'Final Notesheet has been approved.plz Check',
                              );

                              await widget.parameter1!
                                  .update(createApprovedAddRecordData(
                                statusSecretary: 2,
                                feedbacksc: _model.textController.text,
                                ispending: false,
                                isaprroved: true,
                                dateofAproval: getCurrentTimestamp,
                                faoStatus: 5,
                                accountantStatus: 1,
                                deputyStatus: 5,
                                directorStatus: 5,
                                datetimeSc: getCurrentTimestamp,
                              ));

                              context.pushNamed('Secretary_Dashboard');
                            }
                          }
                        },
                        text: 'Approve',
                        options: FFButtonOptions(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: const Color(0xFF60E44B),
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Spectral',
                                    color: Colors.white,
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                  ),
                          elevation: 3.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(0.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
