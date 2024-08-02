import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'caseworker_request_letter_widget.dart'
    show CaseworkerRequestLetterWidget;
import 'package:flutter/material.dart';

class CaseworkerRequestLetterModel
    extends FlutterFlowModel<CaseworkerRequestLetterWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for adno widget.
  FocusNode? adnoFocusNode;
  TextEditingController? adnoTextController;
  String? Function(BuildContext, String?)? adnoTextControllerValidator;
  String? _adnoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for bearingrno widget.
  FocusNode? bearingrnoFocusNode;
  TextEditingController? bearingrnoTextController;
  String? Function(BuildContext, String?)? bearingrnoTextControllerValidator;
  String? _bearingrnoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for DropDown widget.
  String? dropDownValue3;
  FormFieldController<String>? dropDownValueController3;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for addressedto widget.
  FocusNode? addressedtoFocusNode;
  TextEditingController? addressedtoTextController;
  String? Function(BuildContext, String?)? addressedtoTextControllerValidator;
  String? _addressedtoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for subject widget.
  FocusNode? subjectFocusNode;
  TextEditingController? subjectTextController;
  String? Function(BuildContext, String?)? subjectTextControllerValidator;
  String? _subjectTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for faceandsize widget.
  String? faceandsizeValue;
  FormFieldController<String>? faceandsizeValueController;
  // State field(s) for faceandsizemanual widget.
  FocusNode? faceandsizemanualFocusNode;
  TextEditingController? faceandsizemanualTextController;
  String? Function(BuildContext, String?)?
      faceandsizemanualTextControllerValidator;
  // State field(s) for Insertion widget.
  String? insertionValue;
  FormFieldController<String>? insertionValueController;
  // State field(s) for editionmanual widget.
  FocusNode? editionmanualFocusNode;
  TextEditingController? editionmanualTextController;
  String? Function(BuildContext, String?)? editionmanualTextControllerValidator;
  String? _editionmanualTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for billtotextfield widget.
  FocusNode? billtotextfieldFocusNode;
  TextEditingController? billtotextfieldTextController;
  String? Function(BuildContext, String?)?
      billtotextfieldTextControllerValidator;
  String? _billtotextfieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  bool isDataUploading = false;
  List<FFUploadedFile> uploadedLocalFiles = [];
  List<String> uploadedFileUrls = [];

  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  AdvertisementRecord? advertiseRefCaseworkerDraft;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  AdvertisementRecord? advertiseRefCaseworker;
  // Stores action output result for [Backend Call - API (sendemail)] action in Button widget.
  ApiCallResponse? sendmail;

  @override
  void initState(BuildContext context) {
    adnoTextControllerValidator = _adnoTextControllerValidator;
    bearingrnoTextControllerValidator = _bearingrnoTextControllerValidator;
    addressedtoTextControllerValidator = _addressedtoTextControllerValidator;
    subjectTextControllerValidator = _subjectTextControllerValidator;
    editionmanualTextControllerValidator =
        _editionmanualTextControllerValidator;
    billtotextfieldTextControllerValidator =
        _billtotextfieldTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    adnoFocusNode?.dispose();
    adnoTextController?.dispose();

    bearingrnoFocusNode?.dispose();
    bearingrnoTextController?.dispose();

    addressedtoFocusNode?.dispose();
    addressedtoTextController?.dispose();

    subjectFocusNode?.dispose();
    subjectTextController?.dispose();

    faceandsizemanualFocusNode?.dispose();
    faceandsizemanualTextController?.dispose();

    editionmanualFocusNode?.dispose();
    editionmanualTextController?.dispose();

    billtotextfieldFocusNode?.dispose();
    billtotextfieldTextController?.dispose();
  }
}
