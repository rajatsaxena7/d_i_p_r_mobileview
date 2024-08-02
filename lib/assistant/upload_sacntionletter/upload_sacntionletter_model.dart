import '/flutter_flow/flutter_flow_util.dart';
import 'upload_sacntionletter_widget.dart' show UploadSacntionletterWidget;
import 'package:flutter/material.dart';

class UploadSacntionletterModel
    extends FlutterFlowModel<UploadSacntionletterWidget> {
  ///  Local state fields for this page.

  int? selectedno = 10;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
