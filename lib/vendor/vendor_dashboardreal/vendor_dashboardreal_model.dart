import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'vendor_dashboardreal_widget.dart' show VendorDashboardrealWidget;
import 'package:flutter/material.dart';

class VendorDashboardrealModel
    extends FlutterFlowModel<VendorDashboardrealWidget> {
  ///  Local state fields for this page.

  bool isColor = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  JoblogicRecord? latestronumberjobdocument;
  // Stores action output result for [Backend Call - Read Document] action in Button widget.
  AdvertisementRecord? value;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
  }
}
