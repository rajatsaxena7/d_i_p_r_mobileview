import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class AdvertisementVendorRecord extends FirestoreRecord {
  AdvertisementVendorRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Advertisement_Ref" field.
  DocumentReference? _advertisementRef;
  DocumentReference? get advertisementRef => _advertisementRef;
  bool hasAdvertisementRef() => _advertisementRef != null;

  // "VendorName" field.
  String? _vendorName;
  String get vendorName => _vendorName ?? '';
  bool hasVendorName() => _vendorName != null;

  // "useref" field.
  DocumentReference? _useref;
  DocumentReference? get useref => _useref;
  bool hasUseref() => _useref != null;

  void _initializeFields() {
    _advertisementRef = snapshotData['Advertisement_Ref'] as DocumentReference?;
    _vendorName = snapshotData['VendorName'] as String?;
    _useref = snapshotData['useref'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Advertisement_Vendor');

  static Stream<AdvertisementVendorRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AdvertisementVendorRecord.fromSnapshot(s));

  static Future<AdvertisementVendorRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => AdvertisementVendorRecord.fromSnapshot(s));

  static AdvertisementVendorRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AdvertisementVendorRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AdvertisementVendorRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AdvertisementVendorRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AdvertisementVendorRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AdvertisementVendorRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAdvertisementVendorRecordData({
  DocumentReference? advertisementRef,
  String? vendorName,
  DocumentReference? useref,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Advertisement_Ref': advertisementRef,
      'VendorName': vendorName,
      'useref': useref,
    }.withoutNulls,
  );

  return firestoreData;
}

class AdvertisementVendorRecordDocumentEquality
    implements Equality<AdvertisementVendorRecord> {
  const AdvertisementVendorRecordDocumentEquality();

  @override
  bool equals(AdvertisementVendorRecord? e1, AdvertisementVendorRecord? e2) {
    return e1?.advertisementRef == e2?.advertisementRef &&
        e1?.vendorName == e2?.vendorName &&
        e1?.useref == e2?.useref;
  }

  @override
  int hash(AdvertisementVendorRecord? e) => const ListEquality()
      .hash([e?.advertisementRef, e?.vendorName, e?.useref]);

  @override
  bool isValidKey(Object? o) => o is AdvertisementVendorRecord;
}
