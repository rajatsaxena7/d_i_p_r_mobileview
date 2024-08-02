import '/flutter_flow/flutter_flow_util.dart';
import 'vendor_details_widget.dart' show VendorDetailsWidget;
import 'package:flutter/material.dart';

class VendorDetailsModel extends FlutterFlowModel<VendorDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
