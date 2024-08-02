import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/components/loadingindicator_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'caseworker_request_letter_model.dart';
export 'caseworker_request_letter_model.dart';

class CaseworkerRequestLetterWidget extends StatefulWidget {
  const CaseworkerRequestLetterWidget({
    super.key,
    required this.adNo,
  });

  final String? adNo;

  @override
  State<CaseworkerRequestLetterWidget> createState() =>
      _CaseworkerRequestLetterWidgetState();
}

class _CaseworkerRequestLetterWidgetState
    extends State<CaseworkerRequestLetterWidget> {
  late CaseworkerRequestLetterModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CaseworkerRequestLetterModel());

    _model.adnoTextController ??= TextEditingController();
    _model.adnoFocusNode ??= FocusNode();

    _model.bearingrnoTextController ??= TextEditingController();
    _model.bearingrnoFocusNode ??= FocusNode();

    _model.addressedtoTextController ??= TextEditingController(text: 'DIPR');
    _model.addressedtoFocusNode ??= FocusNode();

    _model.subjectTextController ??= TextEditingController();
    _model.subjectFocusNode ??= FocusNode();

    _model.faceandsizemanualTextController ??= TextEditingController();
    _model.faceandsizemanualFocusNode ??= FocusNode();

    _model.editionmanualTextController ??= TextEditingController();
    _model.editionmanualFocusNode ??= FocusNode();

    _model.billtotextfieldTextController ??= TextEditingController();
    _model.billtotextfieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        endDrawer: const Drawer(
          elevation: 16.0,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [],
          ),
        ),
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
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
                size: 35.0,
              ),
            ),
          ),
          title: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
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
                padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: MediaQuery.sizeOf(context).height * 0.85,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Form(
                    key: _model.formKey,
                    autovalidateMode: AutovalidateMode.disabled,
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          10.0, 15.0, 10.0, 20.0),
                      child: SingleChildScrollView(
                        primary: false,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 20.0),
                                child: Text(
                                  'RELEASE ORDER',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Spectral',
                                        fontSize: 20.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 0.0, 0.0),
                              child: Text(
                                'Advertisement Number',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Spectral',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                controller: _model.adnoTextController,
                                focusNode: _model.adnoFocusNode,
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
                                  hintText: 'eg. 5622002232',
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Spectral',
                                        color: FlutterFlowTheme.of(context)
                                            .tertiary,
                                        letterSpacing: 0.0,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Color(0xFFE5E5E5),
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
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
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Spectral',
                                      letterSpacing: 0.0,
                                    ),
                                validator: _model.adnoTextControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 0.0, 0.0),
                              child: Text(
                                'Bearing Number',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Spectral',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                controller: _model.bearingrnoTextController,
                                focusNode: _model.bearingrnoFocusNode,
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
                                  hintText: 'eg. BB/w-78/2023-24/44',
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Spectral',
                                        color: FlutterFlowTheme.of(context)
                                            .tertiary,
                                        letterSpacing: 0.0,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Color(0xFFE5E5E5),
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
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
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Spectral',
                                      letterSpacing: 0.0,
                                    ),
                                validator: _model
                                    .bearingrnoTextControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 0.0, 10.0),
                              child: Text(
                                'Department',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Spectral',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 8.0, 10.0),
                              child: StreamBuilder<List<DepartmentsRecord>>(
                                stream: queryDepartmentsRecord(
                                  singleRecord: true,
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                2.0,
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                2.0,
                                        child: const LoadingindicatorWidget(),
                                      ),
                                    );
                                  }
                                  List<DepartmentsRecord>
                                      dropDownDepartmentsRecordList =
                                      snapshot.data!;
                                  // Return an empty Container when the item does not exist.
                                  if (snapshot.data!.isEmpty) {
                                    return Container();
                                  }
                                  final dropDownDepartmentsRecord =
                                      dropDownDepartmentsRecordList.isNotEmpty
                                          ? dropDownDepartmentsRecordList.first
                                          : null;
                                  return FlutterFlowDropDown<String>(
                                    controller:
                                        _model.dropDownValueController1 ??=
                                            FormFieldController<String>(null),
                                    options: dropDownDepartmentsRecord!
                                        .departmentdata,
                                    onChanged: (val) => setState(
                                        () => _model.dropDownValue1 = val),
                                    width: double.infinity,
                                    height: 56.0,
                                    searchHintTextStyle:
                                        FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Spectral',
                                              letterSpacing: 0.0,
                                            ),
                                    searchTextStyle:
                                        FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Spectral',
                                              letterSpacing: 0.0,
                                            ),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Spectral',
                                          letterSpacing: 0.0,
                                        ),
                                    hintText: 'Please select Department',
                                    searchHintText: 'Search for  Department',
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    elevation: 2.0,
                                    borderColor: const Color(0xFFDEDCDC),
                                    borderWidth: 2.0,
                                    borderRadius: 8.0,
                                    margin: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 4.0, 16.0, 4.0),
                                    hidesUnderline: true,
                                    isOverButton: true,
                                    isSearchable: true,
                                    isMultiSelect: false,
                                  );
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 0.0, 10.0),
                              child: Text(
                                'Type of Advertisement',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Spectral',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 8.0, 10.0),
                              child: FlutterFlowDropDown<String>(
                                controller: _model.dropDownValueController2 ??=
                                    FormFieldController<String>(null),
                                options: const [
                                  'Notice Inviting Tender (NIT)',
                                  'Announcement',
                                  'Circular',
                                  'Order',
                                  'Display',
                                  'Message',
                                  'Notice',
                                  'Notification'
                                ],
                                onChanged: (val) =>
                                    setState(() => _model.dropDownValue2 = val),
                                width: double.infinity,
                                height: 56.0,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Spectral',
                                      letterSpacing: 0.0,
                                    ),
                                hintText: 'Type of Advertisement',
                                icon: Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 24.0,
                                ),
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                elevation: 2.0,
                                borderColor: const Color(0xFFDEDCDC),
                                borderWidth: 2.0,
                                borderRadius: 8.0,
                                margin: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 4.0, 16.0, 4.0),
                                hidesUnderline: true,
                                isOverButton: true,
                                isSearchable: false,
                                isMultiSelect: false,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 0.0, 10.0),
                              child: Text(
                                'Type of Newspaper',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Spectral',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 8.0, 10.0),
                              child: FlutterFlowDropDown<String>(
                                controller: _model.dropDownValueController3 ??=
                                    FormFieldController<String>(null),
                                options: const ['Local Newspaper'],
                                onChanged: (val) =>
                                    setState(() => _model.dropDownValue3 = val),
                                width: double.infinity,
                                height: 56.0,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Spectral',
                                      letterSpacing: 0.0,
                                    ),
                                hintText: 'Type of Newspaper',
                                icon: Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 24.0,
                                ),
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                elevation: 2.0,
                                borderColor: const Color(0xFFDEDCDC),
                                borderWidth: 2.0,
                                borderRadius: 8.0,
                                margin: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 4.0, 16.0, 4.0),
                                hidesUnderline: true,
                                isOverButton: true,
                                isSearchable: false,
                                isMultiSelect: false,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 0.0, 0.0),
                              child: Text(
                                'Application Date',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Spectral',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 8.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  FlutterFlowIconButton(
                                    borderColor:
                                        FlutterFlowTheme.of(context).primary,
                                    borderRadius: 5.0,
                                    borderWidth: 1.0,
                                    buttonSize: 50.0,
                                    fillColor: const Color(0xFFE5F4F1),
                                    icon: Icon(
                                      Icons.calendar_today_sharp,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 30.0,
                                    ),
                                    onPressed: () async {
                                      final datePicked1Date =
                                          await showDatePicker(
                                        context: context,
                                        initialDate: getCurrentTimestamp,
                                        firstDate: DateTime(1900),
                                        lastDate: getCurrentTimestamp,
                                        builder: (context, child) {
                                          return wrapInMaterialDatePickerTheme(
                                            context,
                                            child!,
                                            headerBackgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            headerForegroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                            headerTextStyle:
                                                FlutterFlowTheme.of(context)
                                                    .headlineLarge
                                                    .override(
                                                      fontFamily: 'Spectral',
                                                      fontSize: 32.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                            pickerBackgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            pickerForegroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            selectedDateTimeBackgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            selectedDateTimeForegroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                            actionButtonForegroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            iconSize: 24.0,
                                          );
                                        },
                                      );

                                      if (datePicked1Date != null) {
                                        safeSetState(() {
                                          _model.datePicked1 = DateTime(
                                            datePicked1Date.year,
                                            datePicked1Date.month,
                                            datePicked1Date.day,
                                          );
                                        });
                                      }
                                    },
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 0.0, 0.0),
                                    child: Container(
                                      height: 56.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        border: Border.all(
                                          color: const Color(0xFFBEBEBE),
                                        ),
                                      ),
                                      child: Align(
                                        alignment:
                                            const AlignmentDirectional(-1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 10.0, 0.0),
                                          child: Text(
                                            dateTimeFormat(
                                                            'd/M/y',
                                                            _model
                                                                .datePicked1) !=
                                                        ''
                                                ? dateTimeFormat(
                                                    'd/M/y', _model.datePicked1)
                                                : 'Select Application date ',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Spectral',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 0.0, 0.0),
                              child: Text(
                                'Date of Publication',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Spectral',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 8.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  FlutterFlowIconButton(
                                    borderColor:
                                        FlutterFlowTheme.of(context).primary,
                                    borderRadius: 5.0,
                                    borderWidth: 1.0,
                                    buttonSize: 50.0,
                                    fillColor: const Color(0xFFE5F4F1),
                                    icon: Icon(
                                      Icons.calendar_today_sharp,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 30.0,
                                    ),
                                    onPressed: () async {
                                      if (_model.datePicked1 != null) {
                                        final datePicked2Date =
                                            await showDatePicker(
                                          context: context,
                                          initialDate: getCurrentTimestamp,
                                          firstDate: (_model.datePicked1 ??
                                              DateTime(1900)),
                                          lastDate: DateTime(2050),
                                          builder: (context, child) {
                                            return wrapInMaterialDatePickerTheme(
                                              context,
                                              child!,
                                              headerBackgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              headerForegroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              headerTextStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineLarge
                                                      .override(
                                                        fontFamily: 'Spectral',
                                                        fontSize: 32.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                              pickerBackgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              pickerForegroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              selectedDateTimeBackgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              selectedDateTimeForegroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              actionButtonForegroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              iconSize: 24.0,
                                            );
                                          },
                                        );

                                        if (datePicked2Date != null) {
                                          safeSetState(() {
                                            _model.datePicked2 = DateTime(
                                              datePicked2Date.year,
                                              datePicked2Date.month,
                                              datePicked2Date.day,
                                            );
                                          });
                                        }
                                      } else {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              'Select the Application date.',
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
                                      }
                                    },
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 0.0, 0.0),
                                    child: Container(
                                      height: 56.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        border: Border.all(
                                          color: const Color(0xFFBEBEBE),
                                        ),
                                      ),
                                      child: Align(
                                        alignment:
                                            const AlignmentDirectional(-1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 10.0, 0.0),
                                          child: Text(
                                            _model.datePicked2 != null
                                                ? dateTimeFormat(
                                                    'd/M/y', _model.datePicked2)
                                                : 'Select Publication date ',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Spectral',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 0.0, 0.0),
                              child: Text(
                                'Addressed to',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Spectral',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                controller: _model.addressedtoTextController,
                                focusNode: _model.addressedtoFocusNode,
                                autofocus: false,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Spectral',
                                        color: FlutterFlowTheme.of(context)
                                            .tertiary,
                                        letterSpacing: 0.0,
                                      ),
                                  hintText:
                                      'Please add to whom you wan tot address',
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Spectral',
                                        color: FlutterFlowTheme.of(context)
                                            .tertiary,
                                        letterSpacing: 0.0,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Color(0xFFE5E5E5),
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
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
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Spectral',
                                      letterSpacing: 0.0,
                                    ),
                                validator: _model
                                    .addressedtoTextControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 0.0, 0.0),
                              child: Text(
                                'Subject',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Spectral',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                controller: _model.subjectTextController,
                                focusNode: _model.subjectFocusNode,
                                autofocus: false,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Spectral',
                                        color: FlutterFlowTheme.of(context)
                                            .tertiary,
                                        letterSpacing: 0.0,
                                      ),
                                  hintText: 'Please add the subject',
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Spectral',
                                        color: FlutterFlowTheme.of(context)
                                            .tertiary,
                                        letterSpacing: 0.0,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Color(0xFFE5E5E5),
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
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
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Spectral',
                                      letterSpacing: 0.0,
                                    ),
                                validator: _model.subjectTextControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 0.0, 0.0),
                              child: Text(
                                'Type face and size',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Spectral',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 8.0, 10.0),
                              child: StreamBuilder<List<DepartmentsRecord>>(
                                stream: queryDepartmentsRecord(
                                  singleRecord: true,
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                2.0,
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                2.0,
                                        child: const LoadingindicatorWidget(),
                                      ),
                                    );
                                  }
                                  List<DepartmentsRecord>
                                      faceandsizeDepartmentsRecordList =
                                      snapshot.data!;
                                  // Return an empty Container when the item does not exist.
                                  if (snapshot.data!.isEmpty) {
                                    return Container();
                                  }
                                  final faceandsizeDepartmentsRecord =
                                      faceandsizeDepartmentsRecordList
                                              .isNotEmpty
                                          ? faceandsizeDepartmentsRecordList
                                              .first
                                          : null;
                                  return FlutterFlowDropDown<String>(
                                    controller:
                                        _model.faceandsizeValueController ??=
                                            FormFieldController<String>(null),
                                    options: const ['8', '9', 'Manual'],
                                    onChanged: (val) => setState(
                                        () => _model.faceandsizeValue = val),
                                    width: double.infinity,
                                    height: 56.0,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Spectral',
                                          letterSpacing: 0.0,
                                        ),
                                    hintText: 'Please select face and size',
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    elevation: 2.0,
                                    borderColor: const Color(0xFFDEDCDC),
                                    borderWidth: 2.0,
                                    borderRadius: 8.0,
                                    margin: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 4.0, 16.0, 4.0),
                                    hidesUnderline: true,
                                    isOverButton: true,
                                    isSearchable: false,
                                    isMultiSelect: false,
                                  );
                                },
                              ),
                            ),
                            if (_model.faceandsizeValue == 'Manual')
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  controller:
                                      _model.faceandsizemanualTextController,
                                  focusNode: _model.faceandsizemanualFocusNode,
                                  autofocus: false,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Spectral',
                                          color: FlutterFlowTheme.of(context)
                                              .tertiary,
                                          letterSpacing: 0.0,
                                        ),
                                    hintText:
                                        'eg: 8(Eight) point with auto leading',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Spectral',
                                          color: FlutterFlowTheme.of(context)
                                              .tertiary,
                                          letterSpacing: 0.0,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0xFFE5E5E5),
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Spectral',
                                        letterSpacing: 0.0,
                                      ),
                                  validator: _model
                                      .faceandsizemanualTextControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 0.0, 0.0),
                              child: Text(
                                'Insertion',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Spectral',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 8.0, 10.0),
                              child: StreamBuilder<List<DepartmentsRecord>>(
                                stream: queryDepartmentsRecord(
                                  singleRecord: true,
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                2.0,
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                2.0,
                                        child: const LoadingindicatorWidget(),
                                      ),
                                    );
                                  }
                                  List<DepartmentsRecord>
                                      insertionDepartmentsRecordList =
                                      snapshot.data!;
                                  // Return an empty Container when the item does not exist.
                                  if (snapshot.data!.isEmpty) {
                                    return Container();
                                  }
                                  final insertionDepartmentsRecord =
                                      insertionDepartmentsRecordList.isNotEmpty
                                          ? insertionDepartmentsRecordList.first
                                          : null;
                                  return FlutterFlowDropDown<String>(
                                    controller:
                                        _model.insertionValueController ??=
                                            FormFieldController<String>(null),
                                    options: const [
                                      'Any Inner page/Tender page',
                                      'Front Page',
                                      'Back Page'
                                    ],
                                    onChanged: (val) => setState(
                                        () => _model.insertionValue = val),
                                    width: double.infinity,
                                    height: 56.0,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Spectral',
                                          letterSpacing: 0.0,
                                        ),
                                    hintText: 'Please Select  Insertion',
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    elevation: 2.0,
                                    borderColor: const Color(0xFFDEDCDC),
                                    borderWidth: 2.0,
                                    borderRadius: 8.0,
                                    margin: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 4.0, 16.0, 4.0),
                                    hidesUnderline: true,
                                    isOverButton: true,
                                    isSearchable: false,
                                    isMultiSelect: false,
                                  );
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 0.0, 0.0),
                              child: Text(
                                'Edition',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Spectral',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                controller: _model.editionmanualTextController,
                                focusNode: _model.editionmanualFocusNode,
                                autofocus: false,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Spectral',
                                        color: FlutterFlowTheme.of(context)
                                            .tertiary,
                                        letterSpacing: 0.0,
                                      ),
                                  hintText: 'Please Enter Edition',
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Spectral',
                                        color: FlutterFlowTheme.of(context)
                                            .tertiary,
                                        letterSpacing: 0.0,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Color(0xFFE5E5E5),
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
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
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Spectral',
                                      letterSpacing: 0.0,
                                    ),
                                validator: _model
                                    .editionmanualTextControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(-1.0, 0.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    8.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  'Bill To',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Spectral',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                controller:
                                    _model.billtotextfieldTextController,
                                focusNode: _model.billtotextfieldFocusNode,
                                autofocus: false,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Spectral',
                                        color: FlutterFlowTheme.of(context)
                                            .tertiary,
                                        letterSpacing: 0.0,
                                      ),
                                  hintText: 'eg:DIPR',
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Spectral',
                                        color: FlutterFlowTheme.of(context)
                                            .tertiary,
                                        letterSpacing: 0.0,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Color(0xFFE5E5E5),
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
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
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Spectral',
                                      letterSpacing: 0.0,
                                    ),
                                validator: _model
                                    .billtotextfieldTextControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.3,
                                    height:
                                        MediaQuery.sizeOf(context).height * 0.1,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(16.0),
                                      border: Border.all(
                                        color: const Color(0xFFBEBEBE),
                                      ),
                                    ),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        final selectedFiles = await selectFiles(
                                          allowedExtensions: ['pdf'],
                                          multiFile: true,
                                        );
                                        if (selectedFiles != null) {
                                          setState(() =>
                                              _model.isDataUploading = true);
                                          var selectedUploadedFiles =
                                              <FFUploadedFile>[];

                                          var downloadUrls = <String>[];
                                          try {
                                            showUploadMessage(
                                              context,
                                              'Uploading file...',
                                              showLoading: true,
                                            );
                                            selectedUploadedFiles =
                                                selectedFiles
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
                                            _model.isDataUploading = false;
                                          }
                                          if (selectedUploadedFiles.length ==
                                                  selectedFiles.length &&
                                              downloadUrls.length ==
                                                  selectedFiles.length) {
                                            setState(() {
                                              _model.uploadedLocalFiles =
                                                  selectedUploadedFiles;
                                              _model.uploadedFileUrls =
                                                  downloadUrls;
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
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          if ((_model.uploadedFileUrls
                                                  .isNotEmpty) ==
                                              false)
                                            const Icon(
                                              Icons.upload_file_sharp,
                                              color: Color(0xFFBEBEBE),
                                              size: 30.0,
                                            ),
                                          if ((_model.uploadedFileUrls
                                                  .isNotEmpty) ==
                                              true)
                                            Icon(
                                              Icons.check,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              size: 30.0,
                                            ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                if ((_model.uploadedFileUrls.isNotEmpty) ==
                                    true)
                                  FFButtonWidget(
                                    onPressed: () async {
                                      context.pushNamed(
                                        'pdfview',
                                        queryParameters: {
                                          'pdfurl': serializeParam(
                                            _model.uploadedFileUrls.first,
                                            ParamType.String,
                                          ),
                                        }.withoutNulls,
                                      );
                                    },
                                    text: 'View PDF',
                                    options: FFButtonOptions(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          24.0, 15.0, 24.0, 15.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
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
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FFButtonWidget(
                      onPressed: () async {
                        var advertisementRecordReference =
                            AdvertisementRecord.collection.doc();
                        await advertisementRecordReference.set({
                          ...createAdvertisementRecordData(
                            advertisementId: _model.adnoTextController.text,
                            dateOfApplication: _model.datePicked1,
                            subject: _model.subjectTextController.text,
                            addressTo: _model.addressedtoTextController.text,
                            typeOfAdvertisement: _model.dropDownValue2,
                            isCaseWorker: false,
                            isDeputy: false,
                            isFao: false,
                            isVendor: false,
                            statusCaseworker: 0,
                            statusDeputy: 0,
                            statusFao: 0,
                            statusVendor: 0,
                            dateOfPublishing: _model.datePicked2,
                            bearingno: _model.bearingrnoTextController.text,
                            insertion: _model.insertionValue,
                            releaseOrderNo: '',
                            departmentName: _model.dropDownValue1,
                            currentRole: '',
                            typeFaceSize: valueOrDefault<String>(
                              _model.faceandsizeValue == 'Manual'
                                  ? _model.faceandsizemanualTextController.text
                                  : valueOrDefault<String>(
                                      _model.faceandsizeValue,
                                      '8',
                                    ),
                              '8',
                            ),
                            isbothnationalandlocal: _model.dropDownValue3 ==
                                    'National Newspaper  &  Local Newspaper'
                                ? true
                                : false,
                            isnational: (_model.dropDownValue3 ==
                                        'National Newspaper') ||
                                    (_model.dropDownValue3 ==
                                        'Local Newspaper & National Newspaper') ||
                                    (_model.dropDownValue3 ==
                                        'Regional Newspaper & National Newspaper')
                                ? true
                                : false,
                            rodate: getCurrentTimestamp,
                            billTo: _model.billtotextfieldTextController.text,
                            regionalNewspaper: (_model.dropDownValue3 ==
                                        'Regional Newspaper') ||
                                    (_model.dropDownValue3 ==
                                        'Regional Newspaper & National Newspaper') ||
                                    (_model.dropDownValue3 ==
                                        'Local Newspaper & Regional Newspaper')
                                ? true
                                : false,
                            localnewspapers: (_model.dropDownValue3 ==
                                        'Local Newspaper') ||
                                    (_model.dropDownValue3 ==
                                        'Local Newspaper & Regional Newspaper') ||
                                    (_model.dropDownValue3 ==
                                        'Local Newspaper & National Newspaper')
                                ? true
                                : false,
                            edition: _model.editionmanualTextController.text,
                          ),
                          ...mapToFirestore(
                            {
                              'ListofPdf': _model.uploadedFileUrls,
                              'approvednewspaperslocal':
                                  FFAppState().listofnationalnewspapers,
                            },
                          ),
                        });
                        _model.advertiseRefCaseworkerDraft =
                            AdvertisementRecord.getDocumentFromData({
                          ...createAdvertisementRecordData(
                            advertisementId: _model.adnoTextController.text,
                            dateOfApplication: _model.datePicked1,
                            subject: _model.subjectTextController.text,
                            addressTo: _model.addressedtoTextController.text,
                            typeOfAdvertisement: _model.dropDownValue2,
                            isCaseWorker: false,
                            isDeputy: false,
                            isFao: false,
                            isVendor: false,
                            statusCaseworker: 0,
                            statusDeputy: 0,
                            statusFao: 0,
                            statusVendor: 0,
                            dateOfPublishing: _model.datePicked2,
                            bearingno: _model.bearingrnoTextController.text,
                            insertion: _model.insertionValue,
                            releaseOrderNo: '',
                            departmentName: _model.dropDownValue1,
                            currentRole: '',
                            typeFaceSize: valueOrDefault<String>(
                              _model.faceandsizeValue == 'Manual'
                                  ? _model.faceandsizemanualTextController.text
                                  : valueOrDefault<String>(
                                      _model.faceandsizeValue,
                                      '8',
                                    ),
                              '8',
                            ),
                            isbothnationalandlocal: _model.dropDownValue3 ==
                                    'National Newspaper  &  Local Newspaper'
                                ? true
                                : false,
                            isnational: (_model.dropDownValue3 ==
                                        'National Newspaper') ||
                                    (_model.dropDownValue3 ==
                                        'Local Newspaper & National Newspaper') ||
                                    (_model.dropDownValue3 ==
                                        'Regional Newspaper & National Newspaper')
                                ? true
                                : false,
                            rodate: getCurrentTimestamp,
                            billTo: _model.billtotextfieldTextController.text,
                            regionalNewspaper: (_model.dropDownValue3 ==
                                        'Regional Newspaper') ||
                                    (_model.dropDownValue3 ==
                                        'Regional Newspaper & National Newspaper') ||
                                    (_model.dropDownValue3 ==
                                        'Local Newspaper & Regional Newspaper')
                                ? true
                                : false,
                            localnewspapers: (_model.dropDownValue3 ==
                                        'Local Newspaper') ||
                                    (_model.dropDownValue3 ==
                                        'Local Newspaper & Regional Newspaper') ||
                                    (_model.dropDownValue3 ==
                                        'Local Newspaper & National Newspaper')
                                ? true
                                : false,
                            edition: _model.editionmanualTextController.text,
                          ),
                          ...mapToFirestore(
                            {
                              'ListofPdf': _model.uploadedFileUrls,
                              'approvednewspaperslocal':
                                  FFAppState().listofnationalnewspapers,
                            },
                          ),
                        }, advertisementRecordReference);

                        context.goNamed('Caseworker_dashboard');

                        setState(() {});
                      },
                      text: 'Save to Draft',
                      options: FFButtonOptions(
                        height: MediaQuery.sizeOf(context).height * 0.05,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Spectral',
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                ),
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                    ),
                    FFButtonWidget(
                      onPressed: () async {
                        if (_model.formKey.currentState == null ||
                            !_model.formKey.currentState!.validate()) {
                          return;
                        }
                        if (_model.dropDownValue1 == null) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Please select the Department',
                                style: TextStyle(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                              ),
                              duration: const Duration(milliseconds: 4000),
                              backgroundColor:
                                  FlutterFlowTheme.of(context).primary,
                            ),
                          );
                          return;
                        }
                        if (_model.dropDownValue2 == null) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Please select the type of Advertisement',
                                style: TextStyle(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                              ),
                              duration: const Duration(milliseconds: 4000),
                              backgroundColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                            ),
                          );
                          return;
                        }
                        if (_model.dropDownValue3 == null) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Please select the Type of newspaper',
                                style: TextStyle(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                              ),
                              duration: const Duration(milliseconds: 4000),
                              backgroundColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                            ),
                          );
                          return;
                        }
                        if (_model.datePicked1 == null) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Please select the Application Date',
                                style: TextStyle(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                              ),
                              duration: const Duration(milliseconds: 2300),
                              backgroundColor:
                                  FlutterFlowTheme.of(context).primary,
                            ),
                          );
                          return;
                        }
                        if (_model.datePicked2 == null) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Please select the Publication Date',
                                style: TextStyle(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                              ),
                              duration: const Duration(milliseconds: 4000),
                              backgroundColor:
                                  FlutterFlowTheme.of(context).primary,
                            ),
                          );
                          return;
                        }
                        if (_model.faceandsizeValue == null) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Enter Type face and size',
                                style: TextStyle(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                              ),
                              duration: const Duration(milliseconds: 1950),
                              backgroundColor:
                                  FlutterFlowTheme.of(context).primary,
                            ),
                          );
                          return;
                        }
                        if (_model.insertionValue == null) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Please select Insertion',
                                style: TextStyle(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                              ),
                              duration: const Duration(milliseconds: 4000),
                              backgroundColor:
                                  FlutterFlowTheme.of(context).primary,
                            ),
                          );
                          return;
                        }
                        if (_model.uploadedFileUrls.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Please upload pdf',
                                style: TextStyle(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                              ),
                              duration: const Duration(milliseconds: 4000),
                              backgroundColor:
                                  FlutterFlowTheme.of(context).secondary,
                            ),
                          );
                          return;
                        }

                        var advertisementRecordReference =
                            AdvertisementRecord.collection.doc();
                        await advertisementRecordReference.set({
                          ...createAdvertisementRecordData(
                            advertisementId: _model.adnoTextController.text,
                            dateOfApplication: _model.datePicked1,
                            subject: _model.subjectTextController.text,
                            addressTo: _model.addressedtoTextController.text,
                            typeOfAdvertisement: _model.dropDownValue2,
                            isCaseWorker: false,
                            isDeputy: false,
                            isFao: false,
                            isVendor: false,
                            statusCaseworker: 0,
                            statusDeputy: 0,
                            statusFao: 0,
                            statusVendor: 0,
                            dateOfPublishing: _model.datePicked2,
                            bearingno: _model.bearingrnoTextController.text,
                            insertion: _model.insertionValue,
                            releaseOrderNo: '',
                            departmentName: _model.dropDownValue1,
                            typeFaceSize: valueOrDefault<String>(
                              _model.faceandsizeValue == 'Manual'
                                  ? _model.faceandsizemanualTextController.text
                                  : valueOrDefault<String>(
                                      _model.faceandsizeValue,
                                      '8',
                                    ),
                              '8',
                            ),
                            isDarft: false,
                            isnational: (_model.dropDownValue3 ==
                                        'National Newspaper') ||
                                    (_model.dropDownValue3 ==
                                        'Local Newspaper & National Newspaper') ||
                                    (_model.dropDownValue3 ==
                                        'Regional Newspaper & National Newspaper')
                                ? true
                                : false,
                            isbothnationalandlocal:
                                _model.dropDownValue3 == 'All' ? true : false,
                            regionalNewspaper: (_model.dropDownValue3 ==
                                        'Regional Newspaper') ||
                                    (_model.dropDownValue3 ==
                                        'Regional Newspaper & National Newspaper') ||
                                    (_model.dropDownValue3 ==
                                        'Local Newspaper & Regional Newspaper')
                                ? true
                                : false,
                            localnewspapers: (_model.dropDownValue3 ==
                                        'Local Newspaper') ||
                                    (_model.dropDownValue3 ==
                                        'Local Newspaper & Regional Newspaper') ||
                                    (_model.dropDownValue3 ==
                                        'Local Newspaper & National Newspaper')
                                ? true
                                : false,
                            body: '',
                            dateOfApproval: getCurrentTimestamp,
                            currentRole: '',
                            rodate: getCurrentTimestamp,
                            billTo: _model.billtotextfieldTextController.text,
                            edition: _model.editionmanualTextController.text,
                          ),
                          ...mapToFirestore(
                            {
                              'ListofPdf': _model.uploadedFileUrls,
                              'approvednewspaperslocal':
                                  FFAppState().listofnationalnewspapers,
                            },
                          ),
                        });
                        _model.advertiseRefCaseworker =
                            AdvertisementRecord.getDocumentFromData({
                          ...createAdvertisementRecordData(
                            advertisementId: _model.adnoTextController.text,
                            dateOfApplication: _model.datePicked1,
                            subject: _model.subjectTextController.text,
                            addressTo: _model.addressedtoTextController.text,
                            typeOfAdvertisement: _model.dropDownValue2,
                            isCaseWorker: false,
                            isDeputy: false,
                            isFao: false,
                            isVendor: false,
                            statusCaseworker: 0,
                            statusDeputy: 0,
                            statusFao: 0,
                            statusVendor: 0,
                            dateOfPublishing: _model.datePicked2,
                            bearingno: _model.bearingrnoTextController.text,
                            insertion: _model.insertionValue,
                            releaseOrderNo: '',
                            departmentName: _model.dropDownValue1,
                            typeFaceSize: valueOrDefault<String>(
                              _model.faceandsizeValue == 'Manual'
                                  ? _model.faceandsizemanualTextController.text
                                  : valueOrDefault<String>(
                                      _model.faceandsizeValue,
                                      '8',
                                    ),
                              '8',
                            ),
                            isDarft: false,
                            isnational: (_model.dropDownValue3 ==
                                        'National Newspaper') ||
                                    (_model.dropDownValue3 ==
                                        'Local Newspaper & National Newspaper') ||
                                    (_model.dropDownValue3 ==
                                        'Regional Newspaper & National Newspaper')
                                ? true
                                : false,
                            isbothnationalandlocal:
                                _model.dropDownValue3 == 'All' ? true : false,
                            regionalNewspaper: (_model.dropDownValue3 ==
                                        'Regional Newspaper') ||
                                    (_model.dropDownValue3 ==
                                        'Regional Newspaper & National Newspaper') ||
                                    (_model.dropDownValue3 ==
                                        'Local Newspaper & Regional Newspaper')
                                ? true
                                : false,
                            localnewspapers: (_model.dropDownValue3 ==
                                        'Local Newspaper') ||
                                    (_model.dropDownValue3 ==
                                        'Local Newspaper & Regional Newspaper') ||
                                    (_model.dropDownValue3 ==
                                        'Local Newspaper & National Newspaper')
                                ? true
                                : false,
                            body: '',
                            dateOfApproval: getCurrentTimestamp,
                            currentRole: '',
                            rodate: getCurrentTimestamp,
                            billTo: _model.billtotextfieldTextController.text,
                            edition: _model.editionmanualTextController.text,
                          ),
                          ...mapToFirestore(
                            {
                              'ListofPdf': _model.uploadedFileUrls,
                              'approvednewspaperslocal':
                                  FFAppState().listofnationalnewspapers,
                            },
                          ),
                        }, advertisementRecordReference);
                        _model.sendmail = await SendemailCall.call(
                          recipientemail: 'megha@gully2global.com',
                          text: _model.subjectTextController.text,
                        );

                        context.pushNamed(
                          'Caseworker_RequestLetterSummary',
                          queryParameters: {
                            'docRef': serializeParam(
                              _model.advertiseRefCaseworker?.reference,
                              ParamType.DocumentReference,
                            ),
                          }.withoutNulls,
                        );

                        setState(() {});
                      },
                      text: 'Create Request',
                      options: FFButtonOptions(
                        height: MediaQuery.sizeOf(context).height * 0.05,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Spectral',
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                ),
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
