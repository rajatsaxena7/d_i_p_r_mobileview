import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/loadingindicator_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'caseworker_select_newspapers_manually_model.dart';
export 'caseworker_select_newspapers_manually_model.dart';

class CaseworkerSelectNewspapersManuallyWidget extends StatefulWidget {
  const CaseworkerSelectNewspapersManuallyWidget({
    super.key,
    required this.docRef,
  });

  final DocumentReference? docRef;

  @override
  State<CaseworkerSelectNewspapersManuallyWidget> createState() =>
      _CaseworkerSelectNewspapersManuallyWidgetState();
}

class _CaseworkerSelectNewspapersManuallyWidgetState
    extends State<CaseworkerSelectNewspapersManuallyWidget> {
  late CaseworkerSelectNewspapersManuallyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => CaseworkerSelectNewspapersManuallyModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<AdvertisementRecord>(
      stream: AdvertisementRecord.getDocument(widget.docRef!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: Center(
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width * 2.0,
                height: MediaQuery.sizeOf(context).height * 2.0,
                child: const LoadingindicatorWidget(),
              ),
            ),
          );
        }
        final caseworkerSelectNewspapersManuallyAdvertisementRecord =
            snapshot.data!;
        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
              automaticallyImplyLeading: false,
              title: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.safePop();
                          },
                          child: const Icon(
                            Icons.navigate_before,
                            color: Color(0xFF14181B),
                            size: 30.0,
                          ),
                        ),
                      ),
                      AuthUserStreamWidget(
                        builder: (context) => Container(
                          width: 30.0,
                          height: 30.0,
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(
                            'assets/images/diprlogo-removebg-preview.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            10.0, 0.0, 10.0, 0.0),
                        child: AuthUserStreamWidget(
                          builder: (context) => Text(
                            currentUserDisplayName,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  fontSize: 20.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed('ProfilePage');
                    },
                    child: Icon(
                      Icons.person_outline,
                      color: FlutterFlowTheme.of(context).secondary,
                      size: 30.0,
                    ),
                  ),
                ],
              ),
              actions: const [],
              centerTitle: true,
              elevation: 2.0,
            ),
            body: SafeArea(
              top: true,
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Text(
                          'Select Newspaper',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Spectral',
                                    fontSize: 25.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                      if ((caseworkerSelectNewspapersManuallyAdvertisementRecord
                                  .isbothnationalandlocal ==
                              true) ||
                          (caseworkerSelectNewspapersManuallyAdvertisementRecord
                                  .localnewspapers ==
                              true))
                        Align(
                          alignment: const AlignmentDirectional(-1.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 10.0),
                            child: Text(
                              'Local Newspaper',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Spectral',
                                    fontSize: 20.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                        ),
                      if ((caseworkerSelectNewspapersManuallyAdvertisementRecord
                                  .isbothnationalandlocal ==
                              true) ||
                          (caseworkerSelectNewspapersManuallyAdvertisementRecord
                                  .localnewspapers ==
                              true))
                        StreamBuilder<List<UsersRecord>>(
                          stream: queryUsersRecord(
                            queryBuilder: (usersRecord) => usersRecord
                                .where(
                                  'isVendor',
                                  isEqualTo: true,
                                )
                                .where(
                                  'localnewspapers',
                                  isEqualTo: true,
                                )
                                .orderBy('vendorId'),
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return const Center(
                                child: SizedBox(
                                  width: 200.0,
                                  height: 200.0,
                                  child: LoadingindicatorWidget(),
                                ),
                              );
                            }
                            List<UsersRecord> listViewUsersRecordList =
                                snapshot.data!;
                            return ListView.builder(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: listViewUsersRecordList.length,
                              itemBuilder: (context, listViewIndex) {
                                final listViewUsersRecord =
                                    listViewUsersRecordList[listViewIndex];
                                return Theme(
                                  data: ThemeData(
                                    checkboxTheme: const CheckboxThemeData(
                                      visualDensity: VisualDensity.compact,
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                    ),
                                    unselectedWidgetColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryText,
                                  ),
                                  child: CheckboxListTile(
                                    value: _model.checkboxListTileValueMap1[
                                        listViewUsersRecord] ??= false,
                                    onChanged: (newValue) async {
                                      setState(() =>
                                          _model.checkboxListTileValueMap1[
                                              listViewUsersRecord] = newValue!);
                                      if (newValue!) {
                                        if (FFAppState()
                                                .allotednewspapers
                                                .contains(listViewUsersRecord
                                                    .reference) ==
                                            false) {
                                          setState(() {
                                            FFAppState()
                                                .addToSelectednewspaperlist(
                                                    listViewUsersRecord
                                                        .displayName);
                                            FFAppState().addToAllotednewspapers(
                                                listViewUsersRecord.reference);
                                          });
                                        }
                                      } else {
                                        if (FFAppState()
                                                .allotednewspapers
                                                .contains(listViewUsersRecord
                                                    .reference) ==
                                            true) {
                                          setState(() {
                                            FFAppState()
                                                .removeFromSelectednewspaperlist(
                                                    listViewUsersRecord
                                                        .displayName);
                                            FFAppState()
                                                .removeFromAllotednewspapers(
                                                    listViewUsersRecord
                                                        .reference);
                                          });
                                        }
                                      }
                                    },
                                    title: Text(
                                      listViewUsersRecord.displayName,
                                      style: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .override(
                                            fontFamily: 'Spectral',
                                            fontSize: 20.0,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    tileColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    activeColor:
                                        FlutterFlowTheme.of(context).primary,
                                    checkColor:
                                        FlutterFlowTheme.of(context).info,
                                    dense: false,
                                    controlAffinity:
                                        ListTileControlAffinity.leading,
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      if ((caseworkerSelectNewspapersManuallyAdvertisementRecord
                                  .isbothnationalandlocal ==
                              true) ||
                          (caseworkerSelectNewspapersManuallyAdvertisementRecord
                                  .regionalNewspaper ==
                              true))
                        Align(
                          alignment: const AlignmentDirectional(-1.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 10.0),
                            child: Text(
                              'Regional Newspaper',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Spectral',
                                    fontSize: 20.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                        ),
                      if ((caseworkerSelectNewspapersManuallyAdvertisementRecord
                                  .isbothnationalandlocal ==
                              true) ||
                          (caseworkerSelectNewspapersManuallyAdvertisementRecord
                                  .regionalNewspaper ==
                              true))
                        StreamBuilder<List<UsersRecord>>(
                          stream: queryUsersRecord(
                            queryBuilder: (usersRecord) => usersRecord
                                .where(
                                  'isVendor',
                                  isEqualTo: true,
                                )
                                .where(
                                  'RegionalNewspaper',
                                  isEqualTo: true,
                                )
                                .orderBy('display_name'),
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return const Center(
                                child: SizedBox(
                                  width: 200.0,
                                  height: 200.0,
                                  child: LoadingindicatorWidget(),
                                ),
                              );
                            }
                            List<UsersRecord> listViewUsersRecordList =
                                snapshot.data!;
                            return ListView.builder(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: listViewUsersRecordList.length,
                              itemBuilder: (context, listViewIndex) {
                                final listViewUsersRecord =
                                    listViewUsersRecordList[listViewIndex];
                                return Theme(
                                  data: ThemeData(
                                    checkboxTheme: const CheckboxThemeData(
                                      visualDensity: VisualDensity.compact,
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                    ),
                                    unselectedWidgetColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryText,
                                  ),
                                  child: CheckboxListTile(
                                    value: _model.checkboxListTileValueMap2[
                                        listViewUsersRecord] ??= false,
                                    onChanged: (newValue) async {
                                      setState(() =>
                                          _model.checkboxListTileValueMap2[
                                              listViewUsersRecord] = newValue!);
                                      if (newValue!) {
                                        if (FFAppState()
                                                .allotednewspapers
                                                .contains(listViewUsersRecord
                                                    .reference) ==
                                            false) {
                                          setState(() {
                                            FFAppState()
                                                .addToSelectednewspaperlist(
                                                    listViewUsersRecord
                                                        .displayName);
                                            FFAppState().addToAllotednewspapers(
                                                listViewUsersRecord.reference);
                                          });
                                        }
                                      } else {
                                        if (FFAppState()
                                                .allotednewspapers
                                                .contains(listViewUsersRecord
                                                    .reference) ==
                                            true) {
                                          setState(() {
                                            FFAppState()
                                                .removeFromSelectednewspaperlist(
                                                    listViewUsersRecord
                                                        .displayName);
                                            FFAppState()
                                                .removeFromAllotednewspapers(
                                                    listViewUsersRecord
                                                        .reference);
                                          });
                                        }
                                      }
                                    },
                                    title: Text(
                                      listViewUsersRecord.displayName,
                                      style: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .override(
                                            fontFamily: 'Spectral',
                                            fontSize: 20.0,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    tileColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    activeColor:
                                        FlutterFlowTheme.of(context).primary,
                                    checkColor:
                                        FlutterFlowTheme.of(context).info,
                                    dense: false,
                                    controlAffinity:
                                        ListTileControlAffinity.leading,
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      if ((caseworkerSelectNewspapersManuallyAdvertisementRecord
                                  .isbothnationalandlocal ==
                              true) ||
                          (caseworkerSelectNewspapersManuallyAdvertisementRecord
                                  .isnational ==
                              true))
                        Align(
                          alignment: const AlignmentDirectional(-1.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 10.0),
                            child: Text(
                              'National Newspaper',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Spectral',
                                    fontSize: 20.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                        ),
                      if ((caseworkerSelectNewspapersManuallyAdvertisementRecord
                                  .isbothnationalandlocal ==
                              true) ||
                          (caseworkerSelectNewspapersManuallyAdvertisementRecord
                                  .isnational ==
                              true))
                        StreamBuilder<List<UsersRecord>>(
                          stream: queryUsersRecord(
                            queryBuilder: (usersRecord) => usersRecord
                                .where(
                                  'isVendor',
                                  isEqualTo: true,
                                )
                                .where(
                                  'isnationalnewspaper',
                                  isEqualTo: true,
                                )
                                .orderBy('display_name'),
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return const Center(
                                child: SizedBox(
                                  width: 200.0,
                                  height: 200.0,
                                  child: LoadingindicatorWidget(),
                                ),
                              );
                            }
                            List<UsersRecord> listViewUsersRecordList =
                                snapshot.data!;
                            return ListView.builder(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: listViewUsersRecordList.length,
                              itemBuilder: (context, listViewIndex) {
                                final listViewUsersRecord =
                                    listViewUsersRecordList[listViewIndex];
                                return Theme(
                                  data: ThemeData(
                                    checkboxTheme: const CheckboxThemeData(
                                      visualDensity: VisualDensity.compact,
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                    ),
                                    unselectedWidgetColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryText,
                                  ),
                                  child: CheckboxListTile(
                                    value: _model.checkboxListTileValueMap3[
                                        listViewUsersRecord] ??= false,
                                    onChanged: (newValue) async {
                                      setState(() =>
                                          _model.checkboxListTileValueMap3[
                                              listViewUsersRecord] = newValue!);
                                      if (newValue!) {
                                        if (FFAppState()
                                                .allotednewspapers
                                                .contains(listViewUsersRecord
                                                    .reference) ==
                                            false) {
                                          setState(() {
                                            FFAppState()
                                                .addToSelectednewspaperlist(
                                                    listViewUsersRecord
                                                        .displayName);
                                            FFAppState().addToAllotednewspapers(
                                                listViewUsersRecord.reference);
                                          });
                                        }
                                      } else {
                                        if (FFAppState()
                                                .allotednewspapers
                                                .contains(listViewUsersRecord
                                                    .reference) ==
                                            true) {
                                          setState(() {
                                            FFAppState()
                                                .removeFromSelectednewspaperlist(
                                                    listViewUsersRecord
                                                        .displayName);
                                            FFAppState()
                                                .removeFromAllotednewspapers(
                                                    listViewUsersRecord
                                                        .reference);
                                          });
                                        }
                                      }
                                    },
                                    title: Text(
                                      listViewUsersRecord.displayName,
                                      style: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .override(
                                            fontFamily: 'Spectral',
                                            fontSize: 20.0,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    tileColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    activeColor:
                                        FlutterFlowTheme.of(context).primary,
                                    checkColor:
                                        FlutterFlowTheme.of(context).info,
                                    dense: false,
                                    controlAffinity:
                                        ListTileControlAffinity.leading,
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
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
                                    var confirmDialogResponse =
                                        await showDialog<bool>(
                                              context: context,
                                              builder: (alertDialogContext) {
                                                return AlertDialog(
                                                  title: const Text('Alert!'),
                                                  content: const Text(
                                                      'Are you sure you want to send it to Respective Newspapers directly?'),
                                                  actions: [
                                                    TextButton(
                                                      onPressed: () =>
                                                          Navigator.pop(
                                                              alertDialogContext,
                                                              false),
                                                      child: const Text('Cancel'),
                                                    ),
                                                    TextButton(
                                                      onPressed: () =>
                                                          Navigator.pop(
                                                              alertDialogContext,
                                                              true),
                                                      child: const Text('Confirm'),
                                                    ),
                                                  ],
                                                );
                                              },
                                            ) ??
                                            false;
                                    if (confirmDialogResponse) {
                                      await widget.docRef!.update({
                                        ...createAdvertisementRecordData(
                                          statusVendor: 1,
                                          statusDeputy: 2,
                                          statusCaseworker: 5,
                                          isCaseWorker: true,
                                        ),
                                        ...mapToFirestore(
                                          {
                                            'allotednewspapers':
                                                FFAppState().allotednewspapers,
                                          },
                                        ),
                                      });
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: const Text('Success!!'),
                                            content: const Text(
                                                'The advertisement has been sent to respective newspapers.'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext),
                                                child: const Text('Ok'),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                      while (FFAppState().loopmin <
                                          FFAppState()
                                              .allotednewspapers
                                              .length) {
                                        _model.joblogicdocumentone =
                                            await queryJoblogicRecordOnce(
                                          singleRecord: true,
                                        ).then((s) => s.firstOrNull);

                                        await NewspaperJobAllocationRecord
                                            .collection
                                            .doc()
                                            .set(
                                                createNewspaperJobAllocationRecordData(
                                              timeofallotment:
                                                  getCurrentTimestamp,
                                              acknowledgedboolean: false,
                                              newspaperrefuserref: FFAppState()
                                                      .allotednewspapers[
                                                  FFAppState().loopmin],
                                              adref:
                                                  caseworkerSelectNewspapersManuallyAdvertisementRecord
                                                      .reference,
                                              completed: false,
                                              aprovedcw: true,
                                              ronumber: functions.rOnumberNEW(
                                                  _model.joblogicdocumentone!
                                                      .ronumbers),
                                              invoiceraised: false,
                                              duetime:
                                                  functions.return7pmdatetime(
                                                      getCurrentTimestamp),
                                            ));

                                        await buttonJoblogicRecord!.reference
                                            .update({
                                          ...mapToFirestore(
                                            {
                                              'ronumbers':
                                                  FieldValue.increment(1),
                                            },
                                          ),
                                        });
                                        setState(() {
                                          FFAppState().loopmin =
                                              FFAppState().loopmin + 1;
                                        });
                                      }
                                      setState(() {
                                        FFAppState().loopmin = 0;
                                        FFAppState().allotednewspapers = [];
                                      });

                                      context.goNamed('Caseworker_dashboard');
                                    }

                                    setState(() {});
                                  },
                                  text: 'Send to Newspaper',
                                  options: FFButtonOptions(
                                    height: MediaQuery.sizeOf(context).height *
                                        0.07,
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
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          FlutterFlowTheme.of(context).primary,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                List<AdmindataRecord>
                                    buttonAdmindataRecordList = snapshot.data!;
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
                                                      'Are you sure you want to send this to Deputy Director for approval ?'),
                                                  actions: [
                                                    TextButton(
                                                      onPressed: () =>
                                                          Navigator.pop(
                                                              alertDialogContext,
                                                              false),
                                                      child: const Text('Cancel'),
                                                    ),
                                                    TextButton(
                                                      onPressed: () =>
                                                          Navigator.pop(
                                                              alertDialogContext,
                                                              true),
                                                      child: const Text('Confirm'),
                                                    ),
                                                  ],
                                                );
                                              },
                                            ) ??
                                            false;
                                    if (confirmDialogResponse) {
                                      await widget.docRef!.update({
                                        ...createAdvertisementRecordData(
                                          statusVendor: 1,
                                          statusDeputy: 0,
                                          manuallyallotted: true,
                                          isrequesPending: true,
                                          statusCaseworker: 2,
                                          isCaseWorker: true,
                                        ),
                                        ...mapToFirestore(
                                          {
                                            'caseworkerdraftnewspapers':
                                                FFAppState().allotednewspapers,
                                          },
                                        ),
                                      });
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: const Text('Success!!'),
                                            content: const Text(
                                                'The advertisement has been sent to deputy director'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext),
                                                child: const Text('Ok'),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                      while (FFAppState().loopmin <
                                          _model.checkboxListTileCheckedItems1
                                              .length) {
                                        _model.joblogicdocument1 =
                                            await queryJoblogicRecordOnce(
                                          singleRecord: true,
                                        ).then((s) => s.firstOrNull);

                                        await NewspaperJobAllocationRecord
                                            .collection
                                            .doc()
                                            .set(
                                                createNewspaperJobAllocationRecordData(
                                              timeofallotment:
                                                  getCurrentTimestamp,
                                              acknowledgedboolean: false,
                                              newspaperrefuserref: _model
                                                  .checkboxListTileCheckedItems1[
                                                      FFAppState().loopmin]
                                                  .reference,
                                              adref:
                                                  caseworkerSelectNewspapersManuallyAdvertisementRecord
                                                      .reference,
                                              completed: false,
                                              aprovedcw: false,
                                              ronumber: functions.rOnumberNEW(
                                                  _model.joblogicdocument1!
                                                      .ronumbers),
                                              invoiceraised: false,
                                              duetime:
                                                  functions.return7pmdatetime(
                                                      getCurrentTimestamp),
                                            ));

                                        await _model
                                            .joblogicdocument1!.reference
                                            .update({
                                          ...mapToFirestore(
                                            {
                                              'ronumbers':
                                                  FieldValue.increment(1),
                                            },
                                          ),
                                        });
                                        setState(() {
                                          FFAppState().loopmin =
                                              FFAppState().loopmin + 1;
                                        });
                                      }
                                      setState(() {
                                        FFAppState().loopmin = 0;
                                      });

                                      context.goNamed('Caseworker_dashboard');
                                    }

                                    setState(() {});
                                  },
                                  text: 'Send to DD',
                                  options: FFButtonOptions(
                                    height: MediaQuery.sizeOf(context).height *
                                        0.07,
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
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
