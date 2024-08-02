import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'caseworker_select_newspapers_manually_widget.dart'
    show CaseworkerSelectNewspapersManuallyWidget;
import 'package:flutter/material.dart';

class CaseworkerSelectNewspapersManuallyModel
    extends FlutterFlowModel<CaseworkerSelectNewspapersManuallyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for CheckboxListTile widget.

  Map<UsersRecord, bool> checkboxListTileValueMap1 = {};
  List<UsersRecord> get checkboxListTileCheckedItems1 =>
      checkboxListTileValueMap1.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for CheckboxListTile widget.

  Map<UsersRecord, bool> checkboxListTileValueMap2 = {};
  List<UsersRecord> get checkboxListTileCheckedItems2 =>
      checkboxListTileValueMap2.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for CheckboxListTile widget.

  Map<UsersRecord, bool> checkboxListTileValueMap3 = {};
  List<UsersRecord> get checkboxListTileCheckedItems3 =>
      checkboxListTileValueMap3.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  JoblogicRecord? joblogicdocumentone;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  JoblogicRecord? joblogicdocument1;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
