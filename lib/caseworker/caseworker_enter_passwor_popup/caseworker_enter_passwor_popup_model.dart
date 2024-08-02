import '/flutter_flow/flutter_flow_util.dart';
import 'caseworker_enter_passwor_popup_widget.dart'
    show CaseworkerEnterPassworPopupWidget;
import 'package:flutter/material.dart';

class CaseworkerEnterPassworPopupModel
    extends FlutterFlowModel<CaseworkerEnterPassworPopupWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
