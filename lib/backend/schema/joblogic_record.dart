import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class JoblogicRecord extends FirestoreRecord {
  JoblogicRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "alloted" field.
  List<DocumentReference>? _alloted;
  List<DocumentReference> get alloted => _alloted ?? const [];
  bool hasAlloted() => _alloted != null;

  // "waitingquuelist" field.
  List<DocumentReference>? _waitingquuelist;
  List<DocumentReference> get waitingquuelist => _waitingquuelist ?? const [];
  bool hasWaitingquuelist() => _waitingquuelist != null;

  // "ronumbers" field.
  int? _ronumbers;
  int get ronumbers => _ronumbers ?? 0;
  bool hasRonumbers() => _ronumbers != null;

  void _initializeFields() {
    _alloted = getDataList(snapshotData['alloted']);
    _waitingquuelist = getDataList(snapshotData['waitingquuelist']);
    _ronumbers = castToType<int>(snapshotData['ronumbers']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('joblogic');

  static Stream<JoblogicRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => JoblogicRecord.fromSnapshot(s));

  static Future<JoblogicRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => JoblogicRecord.fromSnapshot(s));

  static JoblogicRecord fromSnapshot(DocumentSnapshot snapshot) =>
      JoblogicRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static JoblogicRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      JoblogicRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'JoblogicRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is JoblogicRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createJoblogicRecordData({
  int? ronumbers,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ronumbers': ronumbers,
    }.withoutNulls,
  );

  return firestoreData;
}

class JoblogicRecordDocumentEquality implements Equality<JoblogicRecord> {
  const JoblogicRecordDocumentEquality();

  @override
  bool equals(JoblogicRecord? e1, JoblogicRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.alloted, e2?.alloted) &&
        listEquality.equals(e1?.waitingquuelist, e2?.waitingquuelist) &&
        e1?.ronumbers == e2?.ronumbers;
  }

  @override
  int hash(JoblogicRecord? e) =>
      const ListEquality().hash([e?.alloted, e?.waitingquuelist, e?.ronumbers]);

  @override
  bool isValidKey(Object? o) => o is JoblogicRecord;
}
