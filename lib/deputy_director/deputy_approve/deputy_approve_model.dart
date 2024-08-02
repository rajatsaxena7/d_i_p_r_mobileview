import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'deputy_approve_widget.dart' show DeputyApproveWidget;
import 'package:flutter/material.dart';

class DeputyApproveModel extends FlutterFlowModel<DeputyApproveWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<NewspaperJobAllocationRecord>? documents;
  // Stores action output result for [Backend Call - API (sendemail)] action in Button widget.
  ApiCallResponse? sendmail;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
