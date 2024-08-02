import '/flutter_flow/flutter_flow_util.dart';
import 'admin_caseworker_request_letter_summary_widget.dart'
    show AdminCaseworkerRequestLetterSummaryWidget;
import 'package:flutter/material.dart';

class AdminCaseworkerRequestLetterSummaryModel
    extends FlutterFlowModel<AdminCaseworkerRequestLetterSummaryWidget> {
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
  // State field(s) for releasingno widget.
  FocusNode? releasingnoFocusNode;
  TextEditingController? releasingnoTextController;
  String? Function(BuildContext, String?)? releasingnoTextControllerValidator;
  // State field(s) for addressedto widget.
  FocusNode? addressedtoFocusNode;
  TextEditingController? addressedtoTextController;
  String? Function(BuildContext, String?)? addressedtoTextControllerValidator;
  // State field(s) for subject widget.
  FocusNode? subjectFocusNode;
  TextEditingController? subjectTextController;
  String? Function(BuildContext, String?)? subjectTextControllerValidator;
  // State field(s) for body widget.
  FocusNode? bodyFocusNode1;
  TextEditingController? bodyTextController1;
  String? Function(BuildContext, String?)? bodyTextController1Validator;
  // State field(s) for faceandsize widget.
  FocusNode? faceandsizeFocusNode;
  TextEditingController? faceandsizeTextController;
  String? Function(BuildContext, String?)? faceandsizeTextControllerValidator;
  // State field(s) for insertion widget.
  FocusNode? insertionFocusNode;
  TextEditingController? insertionTextController;
  String? Function(BuildContext, String?)? insertionTextControllerValidator;
  // State field(s) for edition widget.
  FocusNode? editionFocusNode;
  TextEditingController? editionTextController;
  String? Function(BuildContext, String?)? editionTextControllerValidator;
  // State field(s) for body widget.
  FocusNode? bodyFocusNode2;
  TextEditingController? bodyTextController2;
  String? Function(BuildContext, String?)? bodyTextController2Validator;

  @override
  void initState(BuildContext context) {}

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
