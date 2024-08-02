import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'approve_invoice_widget.dart' show ApproveInvoiceWidget;
import 'package:flutter/material.dart';

class ApproveInvoiceModel extends FlutterFlowModel<ApproveInvoiceWidget> {
  ///  Local state fields for this page.

  bool isAdded = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - Read Document] action in Button widget.
  AdvertisementRecord? advertiseread;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
