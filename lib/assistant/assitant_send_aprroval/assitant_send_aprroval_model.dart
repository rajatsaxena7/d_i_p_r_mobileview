import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'assitant_send_aprroval_widget.dart' show AssitantSendAprrovalWidget;
import 'package:flutter/material.dart';

class AssitantSendAprrovalModel
    extends FlutterFlowModel<AssitantSendAprrovalWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  String? _textControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ApprovedAddRecord? aprrovedData;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  NotificationAdminRecord? notifications;

  @override
  void initState(BuildContext context) {
    textControllerValidator = _textControllerValidator;
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
