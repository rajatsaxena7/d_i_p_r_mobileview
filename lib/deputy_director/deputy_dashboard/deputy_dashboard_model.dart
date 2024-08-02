import '/flutter_flow/flutter_flow_util.dart';
import 'deputy_dashboard_widget.dart' show DeputyDashboardWidget;
import 'package:flutter/material.dart';

class DeputyDashboardModel extends FlutterFlowModel<DeputyDashboardWidget> {
  ///  Local state fields for this page.

  bool isColor = true;

  int? selectedno = 10;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Firestore Query - Query a collection] action in Deputy_dashboard widget.
  int? deputyout;
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for TabBar widget.
  TabController? tabBarController1;
  int get tabBarCurrentIndex1 =>
      tabBarController1 != null ? tabBarController1!.index : 0;

  // State field(s) for TabBar widget.
  TabController? tabBarController2;
  int get tabBarCurrentIndex2 =>
      tabBarController2 != null ? tabBarController2!.index : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController1?.dispose();
    tabBarController2?.dispose();
  }
}
