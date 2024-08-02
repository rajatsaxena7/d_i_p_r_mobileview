import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class AssitantDetailsRecord extends FirestoreRecord {
  AssitantDetailsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "userref" field.
  DocumentReference? _userref;
  DocumentReference? get userref => _userref;
  bool hasUserref() => _userref != null;

  // "Noofrejected" field.
  List<int>? _noofrejected;
  List<int> get noofrejected => _noofrejected ?? const [];
  bool hasNoofrejected() => _noofrejected != null;

  // "noofapproved" field.
  List<int>? _noofapproved;
  List<int> get noofapproved => _noofapproved ?? const [];
  bool hasNoofapproved() => _noofapproved != null;

  // "nofpending" field.
  List<int>? _nofpending;
  List<int> get nofpending => _nofpending ?? const [];
  bool hasNofpending() => _nofpending != null;

  void _initializeFields() {
    _userref = snapshotData['userref'] as DocumentReference?;
    _noofrejected = getDataList(snapshotData['Noofrejected']);
    _noofapproved = getDataList(snapshotData['noofapproved']);
    _nofpending = getDataList(snapshotData['nofpending']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Assitant_details');

  static Stream<AssitantDetailsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AssitantDetailsRecord.fromSnapshot(s));

  static Future<AssitantDetailsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AssitantDetailsRecord.fromSnapshot(s));

  static AssitantDetailsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AssitantDetailsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AssitantDetailsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AssitantDetailsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AssitantDetailsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AssitantDetailsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAssitantDetailsRecordData({
  DocumentReference? userref,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userref': userref,
    }.withoutNulls,
  );

  return firestoreData;
}

class AssitantDetailsRecordDocumentEquality
    implements Equality<AssitantDetailsRecord> {
  const AssitantDetailsRecordDocumentEquality();

  @override
  bool equals(AssitantDetailsRecord? e1, AssitantDetailsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.userref == e2?.userref &&
        listEquality.equals(e1?.noofrejected, e2?.noofrejected) &&
        listEquality.equals(e1?.noofapproved, e2?.noofapproved) &&
        listEquality.equals(e1?.nofpending, e2?.nofpending);
  }

  @override
  int hash(AssitantDetailsRecord? e) => const ListEquality()
      .hash([e?.userref, e?.noofrejected, e?.noofapproved, e?.nofpending]);

  @override
  bool isValidKey(Object? o) => o is AssitantDetailsRecord;
}
