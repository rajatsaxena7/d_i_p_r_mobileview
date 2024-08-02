import '/flutter_flow/flutter_flow_util.dart';
import 'fao_dash_board_widget.dart' show FaoDashBoardWidget;
import 'package:flutter/material.dart';

class FaoDashBoardModel extends FlutterFlowModel<FaoDashBoardWidget> {
  ///  Local state fields for this page.

  int? selectedno = 10;

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
