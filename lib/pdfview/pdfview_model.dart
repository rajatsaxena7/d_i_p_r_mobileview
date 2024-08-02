import '/flutter_flow/flutter_flow_util.dart';
import 'pdfview_widget.dart' show PdfviewWidget;
import 'package:flutter/material.dart';

class PdfviewModel extends FlutterFlowModel<PdfviewWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
