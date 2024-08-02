import '/flutter_flow/flutter_flow_util.dart';
import 'assistant_dashboard_copy_widget.dart' show AssistantDashboardCopyWidget;
import 'package:flutter/material.dart';

class AssistantDashboardCopyModel
    extends FlutterFlowModel<AssistantDashboardCopyWidget> {
  ///  Local state fields for this page.

  int? rejected = 0;

  int? approved = 0;

  int? pending = 0;

  bool iscolor = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
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
