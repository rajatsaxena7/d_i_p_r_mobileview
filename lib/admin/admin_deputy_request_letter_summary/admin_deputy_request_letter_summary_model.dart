import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'admin_deputy_request_letter_summary_widget.dart'
    show AdminDeputyRequestLetterSummaryWidget;
import 'package:flutter/material.dart';

class AdminDeputyRequestLetterSummaryModel
    extends FlutterFlowModel<AdminDeputyRequestLetterSummaryWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for adno widget.
  FocusNode? adnoFocusNode;
  TextEditingController? adnoTextController;
  String? Function(BuildContext, String?)? adnoTextControllerValidator;
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
  // State field(s) for releasingno widget.
  FocusNode? releasingnoFocusNode;
  TextEditingController? releasingnoTextController;
  String? Function(BuildContext, String?)? releasingnoTextControllerValidator;
  String? _releasingnoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
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

  // State field(s) for body widget.
  FocusNode? bodyFocusNode1;
  TextEditingController? bodyTextController1;
  String? Function(BuildContext, String?)? bodyTextController1Validator;
  String? _bodyTextController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for faceandsize widget.
  FocusNode? faceandsizeFocusNode;
  TextEditingController? faceandsizeTextController;
  String? Function(BuildContext, String?)? faceandsizeTextControllerValidator;
  String? _faceandsizeTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for insertion widget.
  FocusNode? insertionFocusNode;
  TextEditingController? insertionTextController;
  String? Function(BuildContext, String?)? insertionTextControllerValidator;
  String? _insertionTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for edition widget.
  FocusNode? editionFocusNode;
  TextEditingController? editionTextController;
  String? Function(BuildContext, String?)? editionTextControllerValidator;
  String? _editionTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for body widget.
  FocusNode? bodyFocusNode2;
  TextEditingController? bodyTextController2;
  String? Function(BuildContext, String?)? bodyTextController2Validator;

  @override
  void initState(BuildContext context) {
    bearingrnoTextControllerValidator = _bearingrnoTextControllerValidator;
    releasingnoTextControllerValidator = _releasingnoTextControllerValidator;
    addressedtoTextControllerValidator = _addressedtoTextControllerValidator;
    subjectTextControllerValidator = _subjectTextControllerValidator;
    bodyTextController1Validator = _bodyTextController1Validator;
    faceandsizeTextControllerValidator = _faceandsizeTextControllerValidator;
    insertionTextControllerValidator = _insertionTextControllerValidator;
    editionTextControllerValidator = _editionTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    adnoFocusNode?.dispose();
    adnoTextController?.dispose();

    bearingrnoFocusNode?.dispose();
    bearingrnoTextController?.dispose();

    releasingnoFocusNode?.dispose();
    releasingnoTextController?.dispose();

    addressedtoFocusNode?.dispose();
    addressedtoTextController?.dispose();

    subjectFocusNode?.dispose();
    subjectTextController?.dispose();

    bodyFocusNode1?.dispose();
    bodyTextController1?.dispose();

    faceandsizeFocusNode?.dispose();
    faceandsizeTextController?.dispose();

    insertionFocusNode?.dispose();
    insertionTextController?.dispose();

    editionFocusNode?.dispose();
    editionTextController?.dispose();

    bodyFocusNode2?.dispose();
    bodyTextController2?.dispose();
  }
}
