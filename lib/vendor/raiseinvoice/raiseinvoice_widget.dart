import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/caseworker/submit_request/submit_request_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'raiseinvoice_model.dart';
export 'raiseinvoice_model.dart';

class RaiseinvoiceWidget extends StatefulWidget {
  const RaiseinvoiceWidget({
    super.key,
    required this.jobsllocationdoc,
  });

  final DocumentReference? jobsllocationdoc;

  @override
  State<RaiseinvoiceWidget> createState() => _RaiseinvoiceWidgetState();
}

class _RaiseinvoiceWidgetState extends State<RaiseinvoiceWidget> {
  late RaiseinvoiceModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RaiseinvoiceModel());

    _model.nameTextController ??= TextEditingController();
    _model.nameFocusNode ??= FocusNode();

    _model.mobTextController ??= TextEditingController();
    _model.mobFocusNode ??= FocusNode();

    _model.roNoFocusNode ??= FocusNode();

    _model.newspaperTextController ??= TextEditingController();
    _model.newspaperFocusNode ??= FocusNode();

    _model.bilnoTextController ??= TextEditingController();
    _model.bilnoFocusNode ??= FocusNode();

    _model.invoiceamountTextController ??= TextEditingController();
    _model.invoiceamountFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<NewspaperJobAllocationRecord>(
      stream:
          NewspaperJobAllocationRecord.getDocument(widget.jobsllocationdoc!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
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
        final raiseinvoiceNewspaperJobAllocationRecord = snapshot.data!;
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
                      child: Icon(
                        Icons.chevron_left_outlined,
                        color: FlutterFlowTheme.of(context).secondary,
                        size: 30.0,
                      ),
                    ),
                  ),
                  AuthUserStreamWidget(
                    builder: (context) => InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        setState(() {
                          FFAppState().approvedbyassistant = [];
                        });
                      },
                      child: Container(
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
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                    child: AuthUserStreamWidget(
                      builder: (context) => Text(
                        currentUserDisplayName,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
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
              actions: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                  child: InkWell(
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
                ),
              ],
              centerTitle: true,
              elevation: 2.0,
            ),
            body: SafeArea(
              top: true,
              child: StreamBuilder<AdvertisementRecord>(
                stream: AdvertisementRecord.getDocument(
                    raiseinvoiceNewspaperJobAllocationRecord.adref!),
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
                  final formAdvertisementRecord = snapshot.data!;
                  return Form(
                    key: _model.formKey,
                    autovalidateMode: AutovalidateMode.disabled,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: SingleChildScrollView(
                        primary: false,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Please Enter Name',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Spectral',
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                            TextFormField(
                              controller: _model.nameTextController,
                              focusNode: _model.nameFocusNode,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Spectral',
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                    ),
                                hintText: 'Please Enter Name',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Spectral',
                                      color: const Color(0xFF999999),
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0xFFE5E5E5),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(0.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(0.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(0.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(0.0),
                                ),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Spectral',
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                  ),
                              validator: _model.nameTextControllerValidator
                                  .asValidator(context),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: Text(
                                'Please Enter Phone No.',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Spectral',
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                            TextFormField(
                              controller: _model.mobTextController,
                              focusNode: _model.mobFocusNode,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Spectral',
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                    ),
                                hintText: 'Enter Phone Number',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Spectral',
                                      color: const Color(0xFF999999),
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0xFFE5E5E5),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(0.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(0.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(0.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(0.0),
                                ),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Spectral',
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                  ),
                              validator: _model.mobTextControllerValidator
                                  .asValidator(context),
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(
                                    RegExp('[0-9]'))
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: Text(
                                'Please Enter RO No',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Spectral',
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                            TextFormField(
                              controller: _model.roNoTextController ??=
                                  TextEditingController(
                                text: raiseinvoiceNewspaperJobAllocationRecord
                                    .ronumber,
                              ),
                              focusNode: _model.roNoFocusNode,
                              autofocus: true,
                              readOnly: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Spectral',
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                    ),
                                hintText: 'eg. 123456',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Spectral',
                                      color: const Color(0xFF999999),
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0xFFE5E5E5),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(0.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(0.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(0.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(0.0),
                                ),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Spectral',
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                  ),
                              validator: _model.roNoTextControllerValidator
                                  .asValidator(context),
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(
                                    RegExp('[a-zA-Z0-9]'))
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: Text(
                                'Please Enter Newspaper Page No.',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Spectral',
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                            TextFormField(
                              controller: _model.newspaperTextController,
                              focusNode: _model.newspaperFocusNode,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Spectral',
                                      letterSpacing: 0.0,
                                    ),
                                hintText: 'eg. 1',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Spectral',
                                      color: const Color(0xFF999999),
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0xFFE5E5E5),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(0.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(0.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(0.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(0.0),
                                ),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Spectral',
                                    letterSpacing: 0.0,
                                  ),
                              validator: _model.newspaperTextControllerValidator
                                  .asValidator(context),
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(
                                    RegExp('[0-9]'))
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: Text(
                                'Please Enter Bill No',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Spectral',
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                            TextFormField(
                              controller: _model.bilnoTextController,
                              focusNode: _model.bilnoFocusNode,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Spectral',
                                      letterSpacing: 0.0,
                                    ),
                                hintText: 'eg. 123456',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Spectral',
                                      color: const Color(0xFF999999),
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0xFFE5E5E5),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(0.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(0.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(0.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(0.0),
                                ),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Spectral',
                                    letterSpacing: 0.0,
                                  ),
                              validator: _model.bilnoTextControllerValidator
                                  .asValidator(context),
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(
                                    RegExp('[a-zA-Z0-9]'))
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: Text(
                                'Please Enter Invoice Amount',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Spectral',
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                            TextFormField(
                              controller: _model.invoiceamountTextController,
                              focusNode: _model.invoiceamountFocusNode,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Spectral',
                                      letterSpacing: 0.0,
                                    ),
                                hintText: '10,00,000',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Spectral',
                                      color: const Color(0xFF999999),
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0xFFE5E5E5),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(0.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(0.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(0.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(0.0),
                                ),
                                prefixIcon: const Icon(
                                  Icons.currency_rupee,
                                  color: Color(0xFF0E0E0E),
                                  size: 20.0,
                                ),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Spectral',
                                    letterSpacing: 0.0,
                                  ),
                              validator: _model
                                  .invoiceamountTextControllerValidator
                                  .asValidator(context),
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(
                                    RegExp('[0-9]'))
                              ],
                            ),
                            RichText(
                              textScaler: MediaQuery.of(context).textScaler,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Note : ',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Spectral',
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          fontSize: 12.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  TextSpan(
                                    text:
                                        'Please ensure that the invoice amount matches the uploaded invoice amount exactly. Any discrepancies will result in the rejection of your request',
                                    style: TextStyle(
                                      color: FlutterFlowTheme.of(context).error,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 12.0,
                                    ),
                                  )
                                ],
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Spectral',
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  final selectedFiles = await selectFiles(
                                    allowedExtensions: ['pdf'],
                                    multiFile: false,
                                  );
                                  if (selectedFiles != null) {
                                    setState(
                                        () => _model.isDataUploading1 = true);
                                    var selectedUploadedFiles =
                                        <FFUploadedFile>[];

                                    var downloadUrls = <String>[];
                                    try {
                                      showUploadMessage(
                                        context,
                                        'Uploading file...',
                                        showLoading: true,
                                      );
                                      selectedUploadedFiles = selectedFiles
                                          .map((m) => FFUploadedFile(
                                                name: m.storagePath
                                                    .split('/')
                                                    .last,
                                                bytes: m.bytes,
                                              ))
                                          .toList();

                                      downloadUrls = (await Future.wait(
                                        selectedFiles.map(
                                          (f) async => await uploadData(
                                              f.storagePath, f.bytes),
                                        ),
                                      ))
                                          .where((u) => u != null)
                                          .map((u) => u!)
                                          .toList();
                                    } finally {
                                      ScaffoldMessenger.of(context)
                                          .hideCurrentSnackBar();
                                      _model.isDataUploading1 = false;
                                    }
                                    if (selectedUploadedFiles.length ==
                                            selectedFiles.length &&
                                        downloadUrls.length ==
                                            selectedFiles.length) {
                                      setState(() {
                                        _model.uploadedLocalFile1 =
                                            selectedUploadedFiles.first;
                                        _model.uploadedFileUrl1 =
                                            downloadUrls.first;
                                      });
                                      showUploadMessage(
                                        context,
                                        'Success!',
                                      );
                                    } else {
                                      setState(() {});
                                      showUploadMessage(
                                        context,
                                        'Failed to upload file',
                                      );
                                      return;
                                    }
                                  }
                                },
                                text: _model.uploadedFileUrl1 != ''
                                    ? 'Invoice Uploaded'
                                    : 'Upload Invoice',
                                icon: const Icon(
                                  Icons.file_upload_outlined,
                                  size: 20.0,
                                ),
                                options: FFButtonOptions(
                                  height: 45.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: _model.uploadedFileUrl1 != ''
                                      ? const Color(0xFF06C32F)
                                      : const Color(0xFFF0F9FF),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Inter',
                                        color: _model.uploadedFileUrl1 != ''
                                            ? FlutterFlowTheme.of(context)
                                                .secondaryBackground
                                            : FlutterFlowTheme.of(context)
                                                .primary,
                                        fontSize: 14.0,
                                        letterSpacing: 0.0,
                                      ),
                                  elevation: 3.0,
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
                            if (_model.uploadedFileUrl1 != '')
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 0.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    context.pushNamed(
                                      'pdfview',
                                      queryParameters: {
                                        'pdfurl': serializeParam(
                                          _model.uploadedFileUrl1,
                                          ParamType.String,
                                        ),
                                      }.withoutNulls,
                                    );
                                  },
                                  text: 'View Invoice',
                                  options: FFButtonOptions(
                                    height: 45.0,
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: const Color(0xFFF0F9FF),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Inter',
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          fontSize: 12.0,
                                          letterSpacing: 0.0,
                                        ),
                                    elevation: 3.0,
                                    borderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                              ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  final selectedFiles = await selectFiles(
                                    allowedExtensions: ['pdf'],
                                    multiFile: false,
                                  );
                                  if (selectedFiles != null) {
                                    setState(
                                        () => _model.isDataUploading2 = true);
                                    var selectedUploadedFiles =
                                        <FFUploadedFile>[];

                                    var downloadUrls = <String>[];
                                    try {
                                      selectedUploadedFiles = selectedFiles
                                          .map((m) => FFUploadedFile(
                                                name: m.storagePath
                                                    .split('/')
                                                    .last,
                                                bytes: m.bytes,
                                              ))
                                          .toList();

                                      downloadUrls = (await Future.wait(
                                        selectedFiles.map(
                                          (f) async => await uploadData(
                                              f.storagePath, f.bytes),
                                        ),
                                      ))
                                          .where((u) => u != null)
                                          .map((u) => u!)
                                          .toList();
                                    } finally {
                                      _model.isDataUploading2 = false;
                                    }
                                    if (selectedUploadedFiles.length ==
                                            selectedFiles.length &&
                                        downloadUrls.length ==
                                            selectedFiles.length) {
                                      setState(() {
                                        _model.uploadedLocalFile2 =
                                            selectedUploadedFiles.first;
                                        _model.uploadedFileUrl2 =
                                            downloadUrls.first;
                                      });
                                    } else {
                                      setState(() {});
                                      return;
                                    }
                                  }
                                },
                                text: _model.uploadedFileUrl2 != ''
                                    ? 'Newspaper Clip Uploaded'
                                    : 'Upload Newspaper Clip',
                                icon: const Icon(
                                  Icons.file_upload_outlined,
                                  size: 20.0,
                                ),
                                options: FFButtonOptions(
                                  height: 45.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: _model.uploadedFileUrl2 != ''
                                      ? const Color(0xFF06C32F)
                                      : const Color(0xFFF0F9FF),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Inter',
                                        color: _model.uploadedFileUrl2 != ''
                                            ? FlutterFlowTheme.of(context)
                                                .secondaryBackground
                                            : FlutterFlowTheme.of(context)
                                                .primary,
                                        fontSize: 14.0,
                                        letterSpacing: 0.0,
                                      ),
                                  elevation: 3.0,
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
                            if (_model.uploadedFileUrl2 != '')
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 20.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    context.pushNamed(
                                      'pdfview',
                                      queryParameters: {
                                        'pdfurl': serializeParam(
                                          _model.uploadedFileUrl2,
                                          ParamType.String,
                                        ),
                                      }.withoutNulls,
                                    );
                                  },
                                  text: 'View Clip',
                                  options: FFButtonOptions(
                                    height: 45.0,
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: const Color(0xFFF0F9FF),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Inter',
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          fontSize: 12.0,
                                          letterSpacing: 0.0,
                                        ),
                                    elevation: 3.0,
                                    borderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                              ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 16.0, 0.0, 20.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Builder(
                                    builder: (context) => Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 1.0, 0.0, 0.0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          if (_model.formKey.currentState ==
                                                  null ||
                                              !_model.formKey.currentState!
                                                  .validate()) {
                                            return;
                                          }
                                          if (_model.uploadedFileUrl1.isEmpty) {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  'Please Upload the Invoice',
                                                  style: TextStyle(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                  ),
                                                ),
                                                duration: const Duration(
                                                    milliseconds: 4000),
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                              ),
                                            );
                                            return;
                                          }
                                          if (_model.uploadedFileUrl2.isEmpty) {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  'Please Upload the Newspaper Clip',
                                                  style: TextStyle(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                  ),
                                                ),
                                                duration: const Duration(
                                                    milliseconds: 4000),
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                              ),
                                            );
                                            return;
                                          }

                                          var invoiceRequestRecordReference =
                                              InvoiceRequestRecord.collection
                                                  .doc();
                                          await invoiceRequestRecordReference
                                              .set(
                                                  createInvoiceRequestRecordData(
                                            invoiceUrl: _model.uploadedFileUrl1,
                                            advertiseRef:
                                                raiseinvoiceNewspaperJobAllocationRecord
                                                    .adref,
                                            newspaperclip:
                                                _model.uploadedFileUrl2,
                                            assitanttatus: 0,
                                            invoiceamount: double.tryParse(
                                                _model
                                                    .invoiceamountTextController
                                                    .text),
                                            vendorName:
                                                _model.nameTextController.text,
                                            dateOfInvoice: getCurrentTimestamp,
                                            userref: currentUserReference,
                                            phoneNumber:
                                                _model.mobTextController.text,
                                            billno:
                                                _model.bilnoTextController.text,
                                            newspaperpageNo: _model
                                                .newspaperTextController.text,
                                            jobref: widget.jobsllocationdoc,
                                            ronumber:
                                                raiseinvoiceNewspaperJobAllocationRecord
                                                    .ronumber,
                                            clerkDivision: valueOrDefault<int>(
                                              () {
                                                if ((valueOrDefault(currentUserDocument?.vendorId, 0) == 02) ||
                                                    (valueOrDefault(
                                                            currentUserDocument
                                                                ?.vendorId,
                                                            0) ==
                                                        03) ||
                                                    (valueOrDefault(
                                                            currentUserDocument
                                                                ?.vendorId,
                                                            0) ==
                                                        04) ||
                                                    (valueOrDefault(
                                                            currentUserDocument
                                                                ?.vendorId,
                                                            0) ==
                                                        05)) {
                                                  return 1;
                                                } else if ((valueOrDefault(
                                                            currentUserDocument
                                                                ?.vendorId,
                                                            0) ==
                                                        06) ||
                                                    (valueOrDefault(
                                                            currentUserDocument
                                                                ?.vendorId,
                                                            0) ==
                                                        07) ||
                                                    (valueOrDefault(
                                                            currentUserDocument
                                                                ?.vendorId,
                                                            0) ==
                                                        08) ||
                                                    (valueOrDefault(
                                                            currentUserDocument
                                                                ?.vendorId,
                                                            0) ==
                                                        09)) {
                                                  return 2;
                                                } else {
                                                  return 3;
                                                }
                                              }(),
                                              0,
                                            ),
                                            typeOfDepartment:
                                                formAdvertisementRecord
                                                    .departmentName,
                                          ));
                                          _model.invoiceref = InvoiceRequestRecord
                                              .getDocumentFromData(
                                                  createInvoiceRequestRecordData(
                                                    invoiceUrl:
                                                        _model.uploadedFileUrl1,
                                                    advertiseRef:
                                                        raiseinvoiceNewspaperJobAllocationRecord
                                                            .adref,
                                                    newspaperclip:
                                                        _model.uploadedFileUrl2,
                                                    assitanttatus: 0,
                                                    invoiceamount:
                                                        double.tryParse(_model
                                                            .invoiceamountTextController
                                                            .text),
                                                    vendorName: _model
                                                        .nameTextController
                                                        .text,
                                                    dateOfInvoice:
                                                        getCurrentTimestamp,
                                                    userref:
                                                        currentUserReference,
                                                    phoneNumber: _model
                                                        .mobTextController.text,
                                                    billno: _model
                                                        .bilnoTextController
                                                        .text,
                                                    newspaperpageNo: _model
                                                        .newspaperTextController
                                                        .text,
                                                    jobref:
                                                        widget.jobsllocationdoc,
                                                    ronumber:
                                                        raiseinvoiceNewspaperJobAllocationRecord
                                                            .ronumber,
                                                    clerkDivision:
                                                        valueOrDefault<int>(
                                                      () {
                                                        if ((valueOrDefault(currentUserDocument?.vendorId, 0) == 02) ||
                                                            (valueOrDefault(
                                                                    currentUserDocument
                                                                        ?.vendorId,
                                                                    0) ==
                                                                03) ||
                                                            (valueOrDefault(
                                                                    currentUserDocument
                                                                        ?.vendorId,
                                                                    0) ==
                                                                04) ||
                                                            (valueOrDefault(
                                                                    currentUserDocument
                                                                        ?.vendorId,
                                                                    0) ==
                                                                05)) {
                                                          return 1;
                                                        } else if ((valueOrDefault(
                                                                    currentUserDocument
                                                                        ?.vendorId,
                                                                    0) ==
                                                                06) ||
                                                            (valueOrDefault(
                                                                    currentUserDocument
                                                                        ?.vendorId,
                                                                    0) ==
                                                                07) ||
                                                            (valueOrDefault(
                                                                    currentUserDocument
                                                                        ?.vendorId,
                                                                    0) ==
                                                                08) ||
                                                            (valueOrDefault(
                                                                    currentUserDocument
                                                                        ?.vendorId,
                                                                    0) ==
                                                                09)) {
                                                          return 2;
                                                        } else {
                                                          return 3;
                                                        }
                                                      }(),
                                                      0,
                                                    ),
                                                    typeOfDepartment:
                                                        formAdvertisementRecord
                                                            .departmentName,
                                                  ),
                                                  invoiceRequestRecordReference);

                                          await NotificationAdminRecord
                                              .collection
                                              .doc()
                                              .set(
                                                  createNotificationAdminRecordData(
                                                title:
                                                    'A bill related to Request Order (RO) has been  raised. Please review and take necessary action.',
                                                created: getCurrentTimestamp,
                                                assistantstate:
                                                    valueOrDefault<int>(
                                                  () {
                                                    if ((valueOrDefault(currentUserDocument?.vendorId, 0) == 02) ||
                                                        (valueOrDefault(
                                                                currentUserDocument
                                                                    ?.vendorId,
                                                                0) ==
                                                            03) ||
                                                        (valueOrDefault(
                                                                currentUserDocument
                                                                    ?.vendorId,
                                                                0) ==
                                                            04) ||
                                                        (valueOrDefault(
                                                                currentUserDocument
                                                                    ?.vendorId,
                                                                0) ==
                                                            05)) {
                                                      return 1;
                                                    } else if ((valueOrDefault(
                                                                currentUserDocument
                                                                    ?.vendorId,
                                                                0) ==
                                                            06) ||
                                                        (valueOrDefault(
                                                                currentUserDocument
                                                                    ?.vendorId,
                                                                0) ==
                                                            07) ||
                                                        (valueOrDefault(
                                                                currentUserDocument
                                                                    ?.vendorId,
                                                                0) ==
                                                            08) ||
                                                        (valueOrDefault(
                                                                currentUserDocument
                                                                    ?.vendorId,
                                                                0) ==
                                                            09) ||
                                                        (valueOrDefault(
                                                                currentUserDocument
                                                                    ?.vendorId,
                                                                0) ==
                                                            01)) {
                                                      return 2;
                                                    } else {
                                                      return 3;
                                                    }
                                                  }(),
                                                  0,
                                                ),
                                                assistantdashboard: true,
                                              ));

                                          await raiseinvoiceNewspaperJobAllocationRecord
                                              .adref!
                                              .update({
                                            ...createAdvertisementRecordData(
                                              invoiceAssistant: 0,
                                              isuploaded: true,
                                              statusVendor: 1,
                                              posted: currentUserReference,
                                              releaseOrderNo:
                                                  raiseinvoiceNewspaperJobAllocationRecord
                                                      .ronumber,
                                            ),
                                            ...mapToFirestore(
                                              {
                                                'invoicerefList':
                                                    FieldValue.arrayUnion([
                                                  _model.invoiceref?.reference
                                                ]),
                                              },
                                            ),
                                          });

                                          await widget.jobsllocationdoc!.update(
                                              createNewspaperJobAllocationRecordData(
                                            invoiceraised: true,
                                          ));
                                          await showDialog(
                                            barrierDismissible: false,
                                            context: context,
                                            builder: (dialogContext) {
                                              return Dialog(
                                                elevation: 0,
                                                insetPadding: EdgeInsets.zero,
                                                backgroundColor:
                                                    Colors.transparent,
                                                alignment: const AlignmentDirectional(
                                                        0.0, 0.0)
                                                    .resolve(Directionality.of(
                                                        context)),
                                                child: GestureDetector(
                                                  onTap: () => _model
                                                          .unfocusNode
                                                          .canRequestFocus
                                                      ? FocusScope.of(context)
                                                          .requestFocus(_model
                                                              .unfocusNode)
                                                      : FocusScope.of(context)
                                                          .unfocus(),
                                                  child: SizedBox(
                                                    height: MediaQuery.sizeOf(
                                                                context)
                                                            .height *
                                                        0.3,
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.5,
                                                    child: SubmitRequestWidget(
                                                      advref:
                                                          raiseinvoiceNewspaperJobAllocationRecord
                                                              .adref!,
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          ).then((value) => setState(() {}));

                                          setState(() {});
                                        },
                                        text: 'Raise Invoice',
                                        options: FFButtonOptions(
                                          height: 40.0,
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 0.0, 24.0, 0.0),
                                          iconPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: const Color(0xFF06C32F),
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Inter',
                                                    color: Colors.white,
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                          elevation: 3.0,
                                          borderSide: const BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                  FFButtonWidget(
                                    onPressed: () async {
                                      context.safePop();
                                    },
                                    text: 'Cancel',
                                    options: FFButtonOptions(
                                      height: 40.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: const Color(0xFFFF0000),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Inter',
                                            color: Colors.white,
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                      elevation: 3.0,
                                      borderSide: const BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
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
          ),
        );
      },
    );
  }
}
