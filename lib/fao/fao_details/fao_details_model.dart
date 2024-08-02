import '/flutter_flow/flutter_flow_util.dart';
import 'fao_details_widget.dart' show FaoDetailsWidget;
import 'package:flutter/material.dart';

class FaoDetailsModel extends FlutterFlowModel<FaoDetailsWidget> {
  ///  Local state fields for this page.

  int? selectedno = 10;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
