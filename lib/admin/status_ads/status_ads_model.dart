import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'status_ads_widget.dart' show StatusAdsWidget;
import 'package:flutter/material.dart';

class StatusAdsModel extends FlutterFlowModel<StatusAdsWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  AdvertisementRecord? adrefresult;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
