import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'allotingcasewoker_widget.dart' show AllotingcasewokerWidget;
import 'package:flutter/material.dart';

class AllotingcasewokerModel extends FlutterFlowModel<AllotingcasewokerWidget> {
  ///  Local state fields for this page.

  bool isvisible = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Firestore Query - Query a collection] action in allotingcasewoker widget.
  JoblogicRecord? joblogicdocumentpageload;
  // Stores action output result for [Backend Call - Create Document] action in allotingcasewoker widget.
  NewspaperJobAllocationRecord? firstdocument;
  // Stores action output result for [Firestore Query - Query a collection] action in allotingcasewoker widget.
  JoblogicRecord? joblogicdocumentsecond;
  // Stores action output result for [Backend Call - Create Document] action in allotingcasewoker widget.
  NewspaperJobAllocationRecord? seconddocument;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<DocumentReference>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
