import '/flutter_flow/flutter_flow_util.dart';
import 'accountant_view_invoice_widget.dart' show AccountantViewInvoiceWidget;
import 'package:flutter/material.dart';

class AccountantViewInvoiceModel
    extends FlutterFlowModel<AccountantViewInvoiceWidget> {
  ///  Local state fields for this page.

  bool isAdded = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
