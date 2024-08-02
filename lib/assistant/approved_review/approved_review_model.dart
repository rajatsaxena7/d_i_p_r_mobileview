import '/flutter_flow/flutter_flow_util.dart';
import 'approved_review_widget.dart' show ApprovedReviewWidget;
import 'package:flutter/material.dart';

class ApprovedReviewModel extends FlutterFlowModel<ApprovedReviewWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for adno widget.
  FocusNode? adnoFocusNode;
  TextEditingController? adnoTextController;
  String? Function(BuildContext, String?)? adnoTextControllerValidator;
  // State field(s) for bearingrno widget.
  FocusNode? bearingrnoFocusNode;
  TextEditingController? bearingrnoTextController;
  String? Function(BuildContext, String?)? bearingrnoTextControllerValidator;
  // State field(s) for addressedto widget.
  FocusNode? addressedtoFocusNode;
  TextEditingController? addressedtoTextController;
  String? Function(BuildContext, String?)? addressedtoTextControllerValidator;
  // State field(s) for subject widget.
  FocusNode? subjectFocusNode;
  TextEditingController? subjectTextController;
  String? Function(BuildContext, String?)? subjectTextControllerValidator;
  // State field(s) for faceandsize widget.
  FocusNode? faceandsizeFocusNode;
  TextEditingController? faceandsizeTextController;
  String? Function(BuildContext, String?)? faceandsizeTextControllerValidator;
  // State field(s) for insertion widget.
  FocusNode? insertionFocusNode;
  TextEditingController? insertionTextController;
  String? Function(BuildContext, String?)? insertionTextControllerValidator;
  // State field(s) for body widget.
  FocusNode? bodyFocusNode;
  TextEditingController? bodyTextController;
  String? Function(BuildContext, String?)? bodyTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
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

    insertionFocusNode?.dispose();
    insertionTextController?.dispose();

    bodyFocusNode?.dispose();
    bodyTextController?.dispose();
  }
}
