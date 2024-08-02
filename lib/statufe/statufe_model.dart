import '/flutter_flow/flutter_flow_util.dart';
import 'statufe_widget.dart' show StatufeWidget;
import 'package:flutter/material.dart';

class StatufeModel extends FlutterFlowModel<StatufeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
