import '/flutter_flow/flutter_flow_util.dart';
import 'invoice_details_widget.dart' show InvoiceDetailsWidget;
import 'package:flutter/material.dart';

class InvoiceDetailsModel extends FlutterFlowModel<InvoiceDetailsWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // State field(s) for mob widget.
  FocusNode? mobFocusNode;
  TextEditingController? mobTextController;
  String? Function(BuildContext, String?)? mobTextControllerValidator;
  // State field(s) for RoNo widget.
  FocusNode? roNoFocusNode;
  TextEditingController? roNoTextController;
  String? Function(BuildContext, String?)? roNoTextControllerValidator;
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

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
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
