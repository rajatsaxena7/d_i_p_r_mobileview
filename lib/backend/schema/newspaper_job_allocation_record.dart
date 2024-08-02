import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class NewspaperJobAllocationRecord extends FirestoreRecord {
  NewspaperJobAllocationRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "timeofallotment" field.
  DateTime? _timeofallotment;
  DateTime? get timeofallotment => _timeofallotment;
  bool hasTimeofallotment() => _timeofallotment != null;

  // "acknowledgementtime" field.
  DateTime? _acknowledgementtime;
  DateTime? get acknowledgementtime => _acknowledgementtime;
  bool hasAcknowledgementtime() => _acknowledgementtime != null;

  // "acknowledgedboolean" field.
  bool? _acknowledgedboolean;
  bool get acknowledgedboolean => _acknowledgedboolean ?? false;
  bool hasAcknowledgedboolean() => _acknowledgedboolean != null;

  // "newspaperrefuserref" field.
  DocumentReference? _newspaperrefuserref;
  DocumentReference? get newspaperrefuserref => _newspaperrefuserref;
  bool hasNewspaperrefuserref() => _newspaperrefuserref != null;

  // "adref" field.
  DocumentReference? _adref;
  DocumentReference? get adref => _adref;
  bool hasAdref() => _adref != null;

  // "completed" field.
  bool? _completed;
  bool get completed => _completed ?? false;
  bool hasCompleted() => _completed != null;

  // "aprovedcw" field.
  bool? _aprovedcw;
  bool get aprovedcw => _aprovedcw ?? false;
  bool hasAprovedcw() => _aprovedcw != null;

  // "ronumber" field.
  String? _ronumber;
  String get ronumber => _ronumber ?? '';
  bool hasRonumber() => _ronumber != null;

  // "invoiceraised" field.
  bool? _invoiceraised;
  bool get invoiceraised => _invoiceraised ?? false;
  bool hasInvoiceraised() => _invoiceraised != null;

  // "duetime" field.
  DateTime? _duetime;
  DateTime? get duetime => _duetime;
  bool hasDuetime() => _duetime != null;

  void _initializeFields() {
    _timeofallotment = snapshotData['timeofallotment'] as DateTime?;
    _acknowledgementtime = snapshotData['acknowledgementtime'] as DateTime?;
    _acknowledgedboolean = snapshotData['acknowledgedboolean'] as bool?;
    _newspaperrefuserref =
        snapshotData['newspaperrefuserref'] as DocumentReference?;
    _adref = snapshotData['adref'] as DocumentReference?;
    _completed = snapshotData['completed'] as bool?;
    _aprovedcw = snapshotData['aprovedcw'] as bool?;
    _ronumber = snapshotData['ronumber'] as String?;
    _invoiceraised = snapshotData['invoiceraised'] as bool?;
    _duetime = snapshotData['duetime'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('NewspaperJobAllocation');

  static Stream<NewspaperJobAllocationRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => NewspaperJobAllocationRecord.fromSnapshot(s));

  static Future<NewspaperJobAllocationRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => NewspaperJobAllocationRecord.fromSnapshot(s));

  static NewspaperJobAllocationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NewspaperJobAllocationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NewspaperJobAllocationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NewspaperJobAllocationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NewspaperJobAllocationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NewspaperJobAllocationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNewspaperJobAllocationRecordData({
  DateTime? timeofallotment,
  DateTime? acknowledgementtime,
  bool? acknowledgedboolean,
  DocumentReference? newspaperrefuserref,
  DocumentReference? adref,
  bool? completed,
  bool? aprovedcw,
  String? ronumber,
  bool? invoiceraised,
  DateTime? duetime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'timeofallotment': timeofallotment,
      'acknowledgementtime': acknowledgementtime,
      'acknowledgedboolean': acknowledgedboolean,
      'newspaperrefuserref': newspaperrefuserref,
      'adref': adref,
      'completed': completed,
      'aprovedcw': aprovedcw,
      'ronumber': ronumber,
      'invoiceraised': invoiceraised,
      'duetime': duetime,
    }.withoutNulls,
  );

  return firestoreData;
}

class NewspaperJobAllocationRecordDocumentEquality
    implements Equality<NewspaperJobAllocationRecord> {
  const NewspaperJobAllocationRecordDocumentEquality();

  @override
  bool equals(
      NewspaperJobAllocationRecord? e1, NewspaperJobAllocationRecord? e2) {
    return e1?.timeofallotment == e2?.timeofallotment &&
        e1?.acknowledgementtime == e2?.acknowledgementtime &&
        e1?.acknowledgedboolean == e2?.acknowledgedboolean &&
        e1?.newspaperrefuserref == e2?.newspaperrefuserref &&
        e1?.adref == e2?.adref &&
        e1?.completed == e2?.completed &&
        e1?.aprovedcw == e2?.aprovedcw &&
        e1?.ronumber == e2?.ronumber &&
        e1?.invoiceraised == e2?.invoiceraised &&
        e1?.duetime == e2?.duetime;
  }

  @override
  int hash(NewspaperJobAllocationRecord? e) => const ListEquality().hash([
        e?.timeofallotment,
        e?.acknowledgementtime,
        e?.acknowledgedboolean,
        e?.newspaperrefuserref,
        e?.adref,
        e?.completed,
        e?.aprovedcw,
        e?.ronumber,
        e?.invoiceraised,
        e?.duetime
      ]);

  @override
  bool isValidKey(Object? o) => o is NewspaperJobAllocationRecord;
}
