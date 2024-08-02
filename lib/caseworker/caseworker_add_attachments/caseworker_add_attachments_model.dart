import '/flutter_flow/flutter_flow_util.dart';
import 'caseworker_add_attachments_widget.dart'
    show CaseworkerAddAttachmentsWidget;
import 'package:flutter/material.dart';

class CaseworkerAddAttachmentsModel
    extends FlutterFlowModel<CaseworkerAddAttachmentsWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  List<FFUploadedFile> uploadedLocalFiles = [];
  List<String> uploadedFileUrls = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
