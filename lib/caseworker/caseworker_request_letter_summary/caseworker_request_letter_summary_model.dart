import '/flutter_flow/flutter_flow_util.dart';
import 'caseworker_request_letter_summary_widget.dart'
    show CaseworkerRequestLetterSummaryWidget;
import 'package:flutter/material.dart';

class CaseworkerRequestLetterSummaryModel
    extends FlutterFlowModel<CaseworkerRequestLetterSummaryWidget> {
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
  FocusNode? insertionFocusNode1;
  TextEditingController? insertionTextController1;
  String? Function(BuildContext, String?)? insertionTextController1Validator;
  String? _insertionTextController1Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for insertion widget.
  FocusNode? insertionFocusNode2;
  TextEditingController? insertionTextController2;
  String? Function(BuildContext, String?)? insertionTextController2Validator;
  String? _insertionTextController2Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for body widget.
  FocusNode? bodyFocusNode;
  TextEditingController? bodyTextController;
  String? Function(BuildContext, String?)? bodyTextControllerValidator;

  @override
  void initState(BuildContext context) {
    bearingrnoTextControllerValidator = _bearingrnoTextControllerValidator;
    addressedtoTextControllerValidator = _addressedtoTextControllerValidator;
    subjectTextControllerValidator = _subjectTextControllerValidator;
    faceandsizeTextControllerValidator = _faceandsizeTextControllerValidator;
    insertionTextController1Validator = _insertionTextController1Validator;
    insertionTextController2Validator = _insertionTextController2Validator;
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

    insertionFocusNode1?.dispose();
    insertionTextController1?.dispose();

    insertionFocusNode2?.dispose();
    insertionTextController2?.dispose();

    bodyFocusNode?.dispose();
    bodyTextController?.dispose();
  }
}
