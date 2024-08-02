import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'caseworker_request_letter_edit_widget.dart'
    show CaseworkerRequestLetterEditWidget;
import 'package:flutter/material.dart';

class CaseworkerRequestLetterEditModel
    extends FlutterFlowModel<CaseworkerRequestLetterEditWidget> {
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
  // State field(s) for typeofnewspaper widget.
  String? typeofnewspaperValue;
  FormFieldController<String>? typeofnewspaperValueController;
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

  // State field(s) for faceandsizedd widget.
  String? faceandsizeddValue;
  FormFieldController<String>? faceandsizeddValueController;
  // State field(s) for faceandsize widget.
  FocusNode? faceandsizeFocusNode;
  TextEditingController? faceandsizeTextController;
  String? Function(BuildContext, String?)? faceandsizeTextControllerValidator;
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

  // State field(s) for billto widget.
  FocusNode? billtoFocusNode;
  TextEditingController? billtoTextController;
  String? Function(BuildContext, String?)? billtoTextControllerValidator;
  String? _billtoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  bool isDataUploading = false;
  List<FFUploadedFile> uploadedLocalFiles = [];
  List<String> uploadedFileUrls = [];

  @override
  void initState(BuildContext context) {
    adnoTextControllerValidator = _adnoTextControllerValidator;
    bearingrnoTextControllerValidator = _bearingrnoTextControllerValidator;
    addressedtoTextControllerValidator = _addressedtoTextControllerValidator;
    subjectTextControllerValidator = _subjectTextControllerValidator;
    editionmanualTextControllerValidator =
        _editionmanualTextControllerValidator;
    billtoTextControllerValidator = _billtoTextControllerValidator;
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

    faceandsizeFocusNode?.dispose();
    faceandsizeTextController?.dispose();

    editionmanualFocusNode?.dispose();
    editionmanualTextController?.dispose();

    billtoFocusNode?.dispose();
    billtoTextController?.dispose();
  }
}
