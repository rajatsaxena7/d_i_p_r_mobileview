import '/flutter_flow/flutter_flow_util.dart';
import 'accountant_dash_board_widget.dart' show AccountantDashBoardWidget;
import 'package:flutter/material.dart';

class AccountantDashBoardModel
    extends FlutterFlowModel<AccountantDashBoardWidget> {
  ///  Local state fields for this page.

  int? selectedNo = 10;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
  }
}
