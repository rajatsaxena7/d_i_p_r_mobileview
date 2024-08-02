import '/flutter_flow/flutter_flow_util.dart';
import 'add_attachments_widget.dart' show AddAttachmentsWidget;
import 'package:flutter/material.dart';

class AddAttachmentsModel extends FlutterFlowModel<AddAttachmentsWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
