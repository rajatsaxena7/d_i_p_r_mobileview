import '/flutter_flow/flutter_flow_util.dart';
import 'clerk_dashboard_widget.dart' show ClerkDashboardWidget;
import 'package:flutter/material.dart';

class ClerkDashboardModel extends FlutterFlowModel<ClerkDashboardWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
