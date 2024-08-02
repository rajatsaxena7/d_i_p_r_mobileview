import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'deputy_request_letter_edit_widget.dart'
    show DeputyRequestLetterEditWidget;
import 'package:flutter/material.dart';

class DeputyRequestLetterEditModel
    extends FlutterFlowModel<DeputyRequestLetterEditWidget> {
  ///  Local state fields for this page.

  bool ismanual = false;

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
  // State field(s) for department widget.
  String? departmentValue;
  FormFieldController<String>? departmentValueController;
  // State field(s) for typeodads widget.
  String? typeodadsValue;
  FormFieldController<String>? typeodadsValueController;
  // State field(s) for typeofnewspaper widget.
  String? typeofnewspaperValue;
  FormFieldController<String>? typeofnewspaperValueController;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for addressedto widget.
  FocusNode? addressedtoFocusNode;
  TextEditingController? addressedtoTextController;
  String? Function(BuildContext, String?)? addressedtoTextControllerValidator;
  // State field(s) for subject widget.
  FocusNode? subjectFocusNode;
  TextEditingController? subjectTextController;
  String? Function(BuildContext, String?)? subjectTextControllerValidator;
  // State field(s) for faceandsize widget.
  String? faceandsizeValue;
  FormFieldController<String>? faceandsizeValueController;
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
  // State field(s) for billto widget.
  FocusNode? billtoFocusNode;
  TextEditingController? billtoTextController;
  String? Function(BuildContext, String?)? billtoTextControllerValidator;
  bool isDataUploading = false;
  List<FFUploadedFile> uploadedLocalFiles = [];
  List<String> uploadedFileUrls = [];

  @override
  void initState(BuildContext context) {}

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
