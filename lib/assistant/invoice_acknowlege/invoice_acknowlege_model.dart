import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'invoice_acknowlege_widget.dart' show InvoiceAcknowlegeWidget;
import 'package:flutter/material.dart';

class InvoiceAcknowlegeModel extends FlutterFlowModel<InvoiceAcknowlegeWidget> {
  ///  Local state fields for this page.

  bool isAdded = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<ListofapprovedStruct>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
