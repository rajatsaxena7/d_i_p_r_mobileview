import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'raiseinvoice_widget.dart' show RaiseinvoiceWidget;
import 'package:flutter/material.dart';

class RaiseinvoiceModel extends FlutterFlowModel<RaiseinvoiceWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  String? _nameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for mob widget.
  FocusNode? mobFocusNode;
  TextEditingController? mobTextController;
  String? Function(BuildContext, String?)? mobTextControllerValidator;
  String? _mobTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 10) {
      return 'Requires at least 10 characters.';
    }

    return null;
  }

  // State field(s) for RoNo widget.
  FocusNode? roNoFocusNode;
  TextEditingController? roNoTextController;
  String? Function(BuildContext, String?)? roNoTextControllerValidator;
  String? _roNoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for newspaper widget.
  FocusNode? newspaperFocusNode;
  TextEditingController? newspaperTextController;
  String? Function(BuildContext, String?)? newspaperTextControllerValidator;
  // State field(s) for bilno widget.
  FocusNode? bilnoFocusNode;
  TextEditingController? bilnoTextController;
  String? Function(BuildContext, String?)? bilnoTextControllerValidator;
  // State field(s) for invoiceamount widget.
  FocusNode? invoiceamountFocusNode;
  TextEditingController? invoiceamountTextController;
  String? Function(BuildContext, String?)? invoiceamountTextControllerValidator;
  String? _invoiceamountTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  InvoiceRequestRecord? invoiceref;

  @override
  void initState(BuildContext context) {
    nameTextControllerValidator = _nameTextControllerValidator;
    mobTextControllerValidator = _mobTextControllerValidator;
    roNoTextControllerValidator = _roNoTextControllerValidator;
    invoiceamountTextControllerValidator =
        _invoiceamountTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    mobFocusNode?.dispose();
    mobTextController?.dispose();

    roNoFocusNode?.dispose();
    roNoTextController?.dispose();

    newspaperFocusNode?.dispose();
    newspaperTextController?.dispose();

    bilnoFocusNode?.dispose();
    bilnoTextController?.dispose();

    invoiceamountFocusNode?.dispose();
    invoiceamountTextController?.dispose();
  }
}
