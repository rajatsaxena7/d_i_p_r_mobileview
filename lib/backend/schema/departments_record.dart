import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class DepartmentsRecord extends FirestoreRecord {
  DepartmentsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Departmentdata" field.
  List<String>? _departmentdata;
  List<String> get departmentdata => _departmentdata ?? const [];
  bool hasDepartmentdata() => _departmentdata != null;

  void _initializeFields() {
    _departmentdata = getDataList(snapshotData['Departmentdata']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Departments');

  static Stream<DepartmentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DepartmentsRecord.fromSnapshot(s));

  static Future<DepartmentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DepartmentsRecord.fromSnapshot(s));

  static DepartmentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DepartmentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DepartmentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DepartmentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DepartmentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DepartmentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDepartmentsRecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}

class DepartmentsRecordDocumentEquality implements Equality<DepartmentsRecord> {
  const DepartmentsRecordDocumentEquality();

  @override
  bool equals(DepartmentsRecord? e1, DepartmentsRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.departmentdata, e2?.departmentdata);
  }

  @override
  int hash(DepartmentsRecord? e) =>
      const ListEquality().hash([e?.departmentdata]);

  @override
  bool isValidKey(Object? o) => o is DepartmentsRecord;
}
