import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AdmindataRecord extends FirestoreRecord {
  AdmindataRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "pwd" field.
  String? _pwd;
  String get pwd => _pwd ?? '';
  bool hasPwd() => _pwd != null;

  // "Budget" field.
  double? _budget;
  double get budget => _budget ?? 0.0;
  bool hasBudget() => _budget != null;

  // "ronumber" field.
  int? _ronumber;
  int get ronumber => _ronumber ?? 0;
  bool hasRonumber() => _ronumber != null;

  // "vendors" field.
  List<DocumentReference>? _vendors;
  List<DocumentReference> get vendors => _vendors ?? const [];
  bool hasVendors() => _vendors != null;

  // "notesheetno" field.
  int? _notesheetno;
  int get notesheetno => _notesheetno ?? 0;
  bool hasNotesheetno() => _notesheetno != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _pwd = snapshotData['pwd'] as String?;
    _budget = castToType<double>(snapshotData['Budget']);
    _ronumber = castToType<int>(snapshotData['ronumber']);
    _vendors = getDataList(snapshotData['vendors']);
    _notesheetno = castToType<int>(snapshotData['notesheetno']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('admindata');

  static Stream<AdmindataRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AdmindataRecord.fromSnapshot(s));

  static Future<AdmindataRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AdmindataRecord.fromSnapshot(s));

  static AdmindataRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AdmindataRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AdmindataRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AdmindataRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AdmindataRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AdmindataRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAdmindataRecordData({
  String? email,
  String? pwd,
  double? budget,
  int? ronumber,
  int? notesheetno,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'pwd': pwd,
      'Budget': budget,
      'ronumber': ronumber,
      'notesheetno': notesheetno,
    }.withoutNulls,
  );

  return firestoreData;
}

class AdmindataRecordDocumentEquality implements Equality<AdmindataRecord> {
  const AdmindataRecordDocumentEquality();

  @override
  bool equals(AdmindataRecord? e1, AdmindataRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.pwd == e2?.pwd &&
        e1?.budget == e2?.budget &&
        e1?.ronumber == e2?.ronumber &&
        listEquality.equals(e1?.vendors, e2?.vendors) &&
        e1?.notesheetno == e2?.notesheetno;
  }

  @override
  int hash(AdmindataRecord? e) => const ListEquality().hash(
      [e?.email, e?.pwd, e?.budget, e?.ronumber, e?.vendors, e?.notesheetno]);

  @override
  bool isValidKey(Object? o) => o is AdmindataRecord;
}
