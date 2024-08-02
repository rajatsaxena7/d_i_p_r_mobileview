import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'vendorsearchpage_invoiceindividual_widget.dart'
    show VendorsearchpageInvoiceindividualWidget;
import 'package:flutter/material.dart';

class VendorsearchpageInvoiceindividualModel
    extends FlutterFlowModel<VendorsearchpageInvoiceindividualWidget> {
  ///  Local state fields for this page.

  bool isColor = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<NewspaperJobAllocationRecord> simpleSearchResults = [];
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController1 =
      FlutterFlowDataTableController<NewspaperJobAllocationRecord>();
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController2 =
      FlutterFlowDataTableController<NewspaperJobAllocationRecord>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
