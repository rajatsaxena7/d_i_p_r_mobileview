import '/backend/backend.dart';
import '/components/loadingindicator_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'status_ads_model.dart';
export 'status_ads_model.dart';

class StatusAdsWidget extends StatefulWidget {
  const StatusAdsWidget({super.key});

  @override
  State<StatusAdsWidget> createState() => _StatusAdsWidgetState();
}

class _StatusAdsWidgetState extends State<StatusAdsWidget> {
  late StatusAdsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StatusAdsModel());

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
    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: MediaQuery.sizeOf(context).height * 1.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        boxShadow: [
          BoxShadow(
            blurRadius: 4.0,
            color: FlutterFlowTheme.of(context).primary,
            offset: const Offset(
              0.0,
              2.0,
            ),
          )
        ],
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(50.0, 10.0, 50.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                    child: TextFormField(
                      controller: _model.textController,
                      focusNode: _model.textFieldFocusNode,
                      autofocus: true,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Spectral',
                                  color: FlutterFlowTheme.of(context).secondary,
                                  letterSpacing: 0.0,
                                ),
                        hintText: 'Enter Advertisemen Number',
                        hintStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Spectral',
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
                      validator:
                          _model.textControllerValidator.asValidator(context),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      _model.adrefresult = await queryAdvertisementRecordOnce(
                        queryBuilder: (advertisementRecord) =>
                            advertisementRecord.where(
                          'AdvertisementId',
                          isEqualTo: _model.textController.text,
                        ),
                        singleRecord: true,
                      ).then((s) => s.firstOrNull);

                      setState(() {});
                    },
                    text: 'Check Status',
                    options: FFButtonOptions(
                      height: 50.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Spectral',
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                              ),
                      elevation: 3.0,
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).primary,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                      hoverColor: FlutterFlowTheme.of(context).primary,
                      hoverTextColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                  ),
                ),
              ],
            ),
          ),
          if (_model.adrefresult?.reference != null)
            Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Container(
                decoration: const BoxDecoration(),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
                  child: StreamBuilder<AdvertisementRecord>(
                    stream: AdvertisementRecord.getDocument(
                        _model.adrefresult!.reference),
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
                      final containerAdvertisementRecord = snapshot.data!;
                      return Container(
                        decoration: const BoxDecoration(),
                        child: Visibility(
                          visible: _model.adrefresult?.reference != null,
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                40.0, 10.0, 40.0, 20.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Advertisement publish flow ',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        fontSize: 20.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 30.0, 0.0, 20.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 20.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.1,
                                              height: MediaQuery.sizeOf(context)
                                                      .height *
                                                  0.25,
                                              decoration: const BoxDecoration(),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Container(
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.08,
                                                    height: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.08,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          valueOrDefault<Color>(
                                                        () {
                                                          if (containerAdvertisementRecord
                                                                  .statusCaseworker ==
                                                              0) {
                                                            return FlutterFlowTheme
                                                                    .of(context)
                                                                .tertiary;
                                                          } else if (containerAdvertisementRecord
                                                                  .statusCaseworker ==
                                                              1) {
                                                            return FlutterFlowTheme
                                                                    .of(context)
                                                                .tertiary;
                                                          } else if ((containerAdvertisementRecord
                                                                      .statusCaseworker ==
                                                                  2) &&
                                                              (containerAdvertisementRecord
                                                                      .statusCaseworker ==
                                                                  5)) {
                                                            return FlutterFlowTheme
                                                                    .of(context)
                                                                .alternate;
                                                          } else if (containerAdvertisementRecord
                                                                  .statusCaseworker ==
                                                              3) {
                                                            return FlutterFlowTheme
                                                                    .of(context)
                                                                .error;
                                                          } else {
                                                            return const Color(
                                                                0xFFD9D9D9);
                                                          }
                                                        }(),
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .tertiary,
                                                      ),
                                                      shape: BoxShape.circle,
                                                    ),
                                                  ),
                                                  Text(
                                                    'Case Worker',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.1,
                                              decoration: const BoxDecoration(),
                                              child: Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 45.0),
                                                  child: Icon(
                                                    Icons
                                                        .keyboard_double_arrow_right_rounded,
                                                    color: containerAdvertisementRecord
                                                                .isCaseWorker ==
                                                            true
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .alternate
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .tertiary,
                                                    size: 50.0,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.1,
                                              height: MediaQuery.sizeOf(context)
                                                      .height *
                                                  0.25,
                                              decoration: const BoxDecoration(),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Container(
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.08,
                                                    height: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.08,
                                                    decoration: BoxDecoration(
                                                      color: () {
                                                        if ((containerAdvertisementRecord
                                                                    .statusDeputy ==
                                                                0) &&
                                                            (containerAdvertisementRecord
                                                                    .isCaseWorker ==
                                                                true)) {
                                                          return FlutterFlowTheme
                                                                  .of(context)
                                                              .tertiary;
                                                        } else if (containerAdvertisementRecord
                                                                .statusDeputy ==
                                                            1) {
                                                          return FlutterFlowTheme
                                                                  .of(context)
                                                              .tertiary;
                                                        } else if (containerAdvertisementRecord
                                                                .statusDeputy ==
                                                            2) {
                                                          return FlutterFlowTheme
                                                                  .of(context)
                                                              .alternate;
                                                        } else if (containerAdvertisementRecord
                                                                .statusDeputy ==
                                                            3) {
                                                          return FlutterFlowTheme
                                                                  .of(context)
                                                              .error;
                                                        } else {
                                                          return const Color(
                                                              0xFFD9D9D9);
                                                        }
                                                      }(),
                                                      shape: BoxShape.circle,
                                                    ),
                                                  ),
                                                  Text(
                                                    'Deputy Director',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.1,
                                              decoration: const BoxDecoration(),
                                              child: Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 45.0),
                                                  child: Icon(
                                                    Icons
                                                        .keyboard_double_arrow_right_rounded,
                                                    color: containerAdvertisementRecord
                                                                .statusDeputy ==
                                                            2
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .alternate
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .tertiary,
                                                    size: 50.0,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.1,
                                              height: MediaQuery.sizeOf(context)
                                                      .height *
                                                  0.25,
                                              decoration: const BoxDecoration(),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Container(
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.08,
                                                    height: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.08,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          valueOrDefault<Color>(
                                                        () {
                                                          if (containerAdvertisementRecord
                                                                  .approvednewspaperslocal.isEmpty) {
                                                            return FlutterFlowTheme
                                                                    .of(context)
                                                                .tertiary;
                                                          } else if (containerAdvertisementRecord
                                                                  .approvednewspaperslocal
                                                                  .length ==
                                                              1) {
                                                            return FlutterFlowTheme
                                                                    .of(context)
                                                                .tertiary;
                                                          } else if (containerAdvertisementRecord
                                                                  .approvednewspaperslocal
                                                                  .length ==
                                                              2) {
                                                            return FlutterFlowTheme
                                                                    .of(context)
                                                                .alternate;
                                                          } else {
                                                            return const Color(
                                                                0xFFD9D9D9);
                                                          }
                                                        }(),
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .tertiary,
                                                      ),
                                                      shape: BoxShape.circle,
                                                    ),
                                                  ),
                                                  Text(
                                                    'Vendor',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 10.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    decoration: const BoxDecoration(
                                                      color: Color(0xFFD9D9D9),
                                                      shape: BoxShape.circle,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(10.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      'Pending',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Spectral',
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 10.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(10.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Container(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      decoration: const BoxDecoration(
                                                        color:
                                                            Color(0xFF06C32F),
                                                        shape: BoxShape.circle,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(10.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      'Approved',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Spectral',
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          5.0, 0.0, 0.0, 0.0),
                                                  child: Container(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      shape: BoxShape.circle,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          10.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    'Rejected',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Spectral',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  'Current Status',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Spectral',
                                        fontSize: 18.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w800,
                                      ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      20.0, 10.0, 0.0, 0.0),
                                  child: Text(
                                    valueOrDefault<String>(
                                      () {
                                        if ((containerAdvertisementRecord
                                                    .statusDeputy ==
                                                0) &&
                                            (containerAdvertisementRecord
                                                    .isCaseWorker ==
                                                true)) {
                                          return 'The case worker has successfully approved it, and action from the deputy director is still pending.';
                                        } else if (containerAdvertisementRecord
                                                .statusDeputy ==
                                            1) {
                                          return 'The release order has been viewed by the Deputy Director but no action has been taken yet, hence it remains in pending status.';
                                        } else if (containerAdvertisementRecord
                                                .statusDeputy ==
                                            2) {
                                          return 'The Deputy Director has successfully approved the release order.';
                                        } else if (containerAdvertisementRecord
                                                .statusDeputy ==
                                            3) {
                                          return 'The Deputy Director has rejected the release order.';
                                        } else if (containerAdvertisementRecord
                                                .statusCaseworker ==
                                            0) {
                                          return 'The case worker has saved it in draft, as it has not been processed yet.';
                                        } else if (containerAdvertisementRecord
                                                .statusCaseworker ==
                                            1) {
                                          return 'The release order, which was generated by the case worker, is pending approval by Case Worker';
                                        } else if (containerAdvertisementRecord
                                                .statusCaseworker ==
                                            2) {
                                          return 'Approved by Case Worker';
                                        } else if (containerAdvertisementRecord
                                                .statusCaseworker ==
                                            3) {
                                          return 'rejected by Case Worker';
                                        } else if (containerAdvertisementRecord
                                                .approvednewspaperslocal.isEmpty) {
                                          return 'The advertisement requests have been approved by the Deputy Director and are now awaiting the vendor\'s response.';
                                        } else if (containerAdvertisementRecord
                                                .approvednewspaperslocal
                                                .length ==
                                            1) {
                                          return 'One vendor has approved the advertisement requests.';
                                        } else if (containerAdvertisementRecord
                                                .approvednewspaperslocal
                                                .length ==
                                            2) {
                                          return 'The advertisement request has been accepted by 2 vendors.';
                                        } else if (containerAdvertisementRecord
                                                .statusCaseworker ==
                                            5) {
                                          return 'Case Worker Approved and Send to vendor';
                                        } else {
                                          return 'N/A';
                                        }
                                      }(),
                                      'N/A',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Spectral',
                                          letterSpacing: 0.0,
                                        ),
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
              ),
            ),
          if (_model.adrefresult?.reference != null)
            Container(
              decoration: const BoxDecoration(),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                child: StreamBuilder<AdvertisementRecord>(
                  stream: AdvertisementRecord.getDocument(
                      _model.adrefresult!.reference),
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
                    final textAdvertisementRecord = snapshot.data!;
                    return Text(
                      'Accepted Newspapers',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Spectral',
                            letterSpacing: 0.0,
                          ),
                    );
                  },
                ),
              ),
            ),
          if (_model.adrefresult?.reference != null)
            Container(
              decoration: const BoxDecoration(),
              child: StreamBuilder<AdvertisementRecord>(
                stream: AdvertisementRecord.getDocument(
                    _model.adrefresult!.reference),
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
                    decoration: const BoxDecoration(),
                    child: Visibility(
                      visible: containerAdvertisementRecord
                              .approvednewspaperslocal.isNotEmpty,
                      child: Builder(
                        builder: (context) {
                          final doc = containerAdvertisementRecord
                              .approvednewspaperslocal
                              .toList();
                          return SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: List.generate(doc.length, (docIndex) {
                                final docItem = doc[docIndex];
                                return Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        10.0, 10.0, 0.0, 10.0),
                                    child: StreamBuilder<UsersRecord>(
                                      stream: UsersRecord.getDocument(docItem),
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
                                        final containerUsersRecord =
                                            snapshot.data!;
                                        return Container(
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.05,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                            border: Border.all(
                                              color: const Color(0xFFBEBEBE),
                                            ),
                                          ),
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 0.0, 20.0, 0.0),
                                              child: Text(
                                                containerUsersRecord
                                                    .displayName,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Spectral',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                );
                              }),
                            ),
                          );
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
        ],
      ),
    );
  }
}
