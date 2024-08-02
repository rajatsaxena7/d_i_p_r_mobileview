import '/flutter_flow/flutter_flow_util.dart';
import 'accountant_all_invoice_details_widget.dart'
    show AccountantAllInvoiceDetailsWidget;
import 'package:flutter/material.dart';

class AccountantAllInvoiceDetailsModel
    extends FlutterFlowModel<AccountantAllInvoiceDetailsWidget> {
  ///  Local state fields for this page.

  int? selectedno = 10;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
