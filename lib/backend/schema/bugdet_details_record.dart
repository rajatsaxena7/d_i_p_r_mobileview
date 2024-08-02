import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BugdetDetailsRecord extends FirestoreRecord {
  BugdetDetailsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "amountDeducted" field.
  double? _amountDeducted;
  double get amountDeducted => _amountDeducted ?? 0.0;
  bool hasAmountDeducted() => _amountDeducted != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "invoiceRoNumber" field.
  String? _invoiceRoNumber;
  String get invoiceRoNumber => _invoiceRoNumber ?? '';
  bool hasInvoiceRoNumber() => _invoiceRoNumber != null;

  // "invoice" field.
  String? _invoice;
  String get invoice => _invoice ?? '';
  bool hasInvoice() => _invoice != null;

  void _initializeFields() {
    _amountDeducted = castToType<double>(snapshotData['amountDeducted']);
    _date = snapshotData['date'] as DateTime?;
    _invoiceRoNumber = snapshotData['invoiceRoNumber'] as String?;
    _invoice = snapshotData['invoice'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('bugdetDetails');

  static Stream<BugdetDetailsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BugdetDetailsRecord.fromSnapshot(s));

  static Future<BugdetDetailsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BugdetDetailsRecord.fromSnapshot(s));

  static BugdetDetailsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BugdetDetailsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BugdetDetailsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BugdetDetailsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BugdetDetailsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BugdetDetailsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBugdetDetailsRecordData({
  double? amountDeducted,
  DateTime? date,
  String? invoiceRoNumber,
  String? invoice,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'amountDeducted': amountDeducted,
      'date': date,
      'invoiceRoNumber': invoiceRoNumber,
      'invoice': invoice,
    }.withoutNulls,
  );

  return firestoreData;
}

class BugdetDetailsRecordDocumentEquality
    implements Equality<BugdetDetailsRecord> {
  const BugdetDetailsRecordDocumentEquality();

  @override
  bool equals(BugdetDetailsRecord? e1, BugdetDetailsRecord? e2) {
    return e1?.amountDeducted == e2?.amountDeducted &&
        e1?.date == e2?.date &&
        e1?.invoiceRoNumber == e2?.invoiceRoNumber &&
        e1?.invoice == e2?.invoice;
  }

  @override
  int hash(BugdetDetailsRecord? e) => const ListEquality()
      .hash([e?.amountDeducted, e?.date, e?.invoiceRoNumber, e?.invoice]);

  @override
  bool isValidKey(Object? o) => o is BugdetDetailsRecord;
}
