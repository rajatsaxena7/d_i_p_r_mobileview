import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class DeputyDirectorRecord extends FirestoreRecord {
  DeputyDirectorRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "userref" field.
  DocumentReference? _userref;
  DocumentReference? get userref => _userref;
  bool hasUserref() => _userref != null;

  // "noofrejected" field.
  List<int>? _noofrejected;
  List<int> get noofrejected => _noofrejected ?? const [];
  bool hasNoofrejected() => _noofrejected != null;

  // "noofapproved" field.
  List<int>? _noofapproved;
  List<int> get noofapproved => _noofapproved ?? const [];
  bool hasNoofapproved() => _noofapproved != null;

  // "noofPending" field.
  List<int>? _noofPending;
  List<int> get noofPending => _noofPending ?? const [];
  bool hasNoofPending() => _noofPending != null;

  void _initializeFields() {
    _userref = snapshotData['userref'] as DocumentReference?;
    _noofrejected = getDataList(snapshotData['noofrejected']);
    _noofapproved = getDataList(snapshotData['noofapproved']);
    _noofPending = getDataList(snapshotData['noofPending']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('deputyDirector');

  static Stream<DeputyDirectorRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DeputyDirectorRecord.fromSnapshot(s));

  static Future<DeputyDirectorRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DeputyDirectorRecord.fromSnapshot(s));

  static DeputyDirectorRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DeputyDirectorRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DeputyDirectorRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DeputyDirectorRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DeputyDirectorRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DeputyDirectorRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDeputyDirectorRecordData({
  DocumentReference? userref,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userref': userref,
    }.withoutNulls,
  );

  return firestoreData;
}

class DeputyDirectorRecordDocumentEquality
    implements Equality<DeputyDirectorRecord> {
  const DeputyDirectorRecordDocumentEquality();

  @override
  bool equals(DeputyDirectorRecord? e1, DeputyDirectorRecord? e2) {
    const listEquality = ListEquality();
    return e1?.userref == e2?.userref &&
        listEquality.equals(e1?.noofrejected, e2?.noofrejected) &&
        listEquality.equals(e1?.noofapproved, e2?.noofapproved) &&
        listEquality.equals(e1?.noofPending, e2?.noofPending);
  }

  @override
  int hash(DeputyDirectorRecord? e) => const ListEquality()
      .hash([e?.userref, e?.noofrejected, e?.noofapproved, e?.noofPending]);

  @override
  bool isValidKey(Object? o) => o is DeputyDirectorRecord;
}
