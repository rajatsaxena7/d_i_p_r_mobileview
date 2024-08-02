import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InvoiceRequestRecord extends FirestoreRecord {
  InvoiceRequestRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "DueDate" field.
  DateTime? _dueDate;
  DateTime? get dueDate => _dueDate;
  bool hasDueDate() => _dueDate != null;

  // "DateOfInvoice" field.
  DateTime? _dateOfInvoice;
  DateTime? get dateOfInvoice => _dateOfInvoice;
  bool hasDateOfInvoice() => _dateOfInvoice != null;

  // "Status" field.
  int? _status;
  int get status => _status ?? 0;
  bool hasStatus() => _status != null;

  // "Userref" field.
  DocumentReference? _userref;
  DocumentReference? get userref => _userref;
  bool hasUserref() => _userref != null;

  // "TypeOfDepartment" field.
  String? _typeOfDepartment;
  String get typeOfDepartment => _typeOfDepartment ?? '';
  bool hasTypeOfDepartment() => _typeOfDepartment != null;

  // "InvoiceUrl" field.
  String? _invoiceUrl;
  String get invoiceUrl => _invoiceUrl ?? '';
  bool hasInvoiceUrl() => _invoiceUrl != null;

  // "advertiseRef" field.
  DocumentReference? _advertiseRef;
  DocumentReference? get advertiseRef => _advertiseRef;
  bool hasAdvertiseRef() => _advertiseRef != null;

  // "Newspaperclip" field.
  String? _newspaperclip;
  String get newspaperclip => _newspaperclip ?? '';
  bool hasNewspaperclip() => _newspaperclip != null;

  // "Assistant_Review" field.
  String? _assistantReview;
  String get assistantReview => _assistantReview ?? '';
  bool hasAssistantReview() => _assistantReview != null;

  // "deputydirecotor" field.
  String? _deputydirecotor;
  String get deputydirecotor => _deputydirecotor ?? '';
  bool hasDeputydirecotor() => _deputydirecotor != null;

  // "directorReview" field.
  String? _directorReview;
  String get directorReview => _directorReview ?? '';
  bool hasDirectorReview() => _directorReview != null;

  // "FaoReview" field.
  String? _faoReview;
  String get faoReview => _faoReview ?? '';
  bool hasFaoReview() => _faoReview != null;

  // "Assitanttatus" field.
  int? _assitanttatus;
  int get assitanttatus => _assitanttatus ?? 0;
  bool hasAssitanttatus() => _assitanttatus != null;

  // "deputyDirector_status" field.
  int? _deputyDirectorStatus;
  int get deputyDirectorStatus => _deputyDirectorStatus ?? 0;
  bool hasDeputyDirectorStatus() => _deputyDirectorStatus != null;

  // "director_status" field.
  int? _directorStatus;
  int get directorStatus => _directorStatus ?? 0;
  bool hasDirectorStatus() => _directorStatus != null;

  // "Fao_status" field.
  int? _faoStatus;
  int get faoStatus => _faoStatus ?? 0;
  bool hasFaoStatus() => _faoStatus != null;

  // "invoiceamount" field.
  double? _invoiceamount;
  double get invoiceamount => _invoiceamount ?? 0.0;
  bool hasInvoiceamount() => _invoiceamount != null;

  // "vendorName" field.
  String? _vendorName;
  String get vendorName => _vendorName ?? '';
  bool hasVendorName() => _vendorName != null;

  // "phoneNumber" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "billno" field.
  String? _billno;
  String get billno => _billno ?? '';
  bool hasBillno() => _billno != null;

  // "newspaperpageNo" field.
  String? _newspaperpageNo;
  String get newspaperpageNo => _newspaperpageNo ?? '';
  bool hasNewspaperpageNo() => _newspaperpageNo != null;

  // "jobref" field.
  DocumentReference? _jobref;
  DocumentReference? get jobref => _jobref;
  bool hasJobref() => _jobref != null;

  // "Ronumber" field.
  String? _ronumber;
  String get ronumber => _ronumber ?? '';
  bool hasRonumber() => _ronumber != null;

  // "clerkDivision" field.
  int? _clerkDivision;
  int get clerkDivision => _clerkDivision ?? 0;
  bool hasClerkDivision() => _clerkDivision != null;

  void _initializeFields() {
    _dueDate = snapshotData['DueDate'] as DateTime?;
    _dateOfInvoice = snapshotData['DateOfInvoice'] as DateTime?;
    _status = castToType<int>(snapshotData['Status']);
    _userref = snapshotData['Userref'] as DocumentReference?;
    _typeOfDepartment = snapshotData['TypeOfDepartment'] as String?;
    _invoiceUrl = snapshotData['InvoiceUrl'] as String?;
    _advertiseRef = snapshotData['advertiseRef'] as DocumentReference?;
    _newspaperclip = snapshotData['Newspaperclip'] as String?;
    _assistantReview = snapshotData['Assistant_Review'] as String?;
    _deputydirecotor = snapshotData['deputydirecotor'] as String?;
    _directorReview = snapshotData['directorReview'] as String?;
    _faoReview = snapshotData['FaoReview'] as String?;
    _assitanttatus = castToType<int>(snapshotData['Assitanttatus']);
    _deputyDirectorStatus =
        castToType<int>(snapshotData['deputyDirector_status']);
    _directorStatus = castToType<int>(snapshotData['director_status']);
    _faoStatus = castToType<int>(snapshotData['Fao_status']);
    _invoiceamount = castToType<double>(snapshotData['invoiceamount']);
    _vendorName = snapshotData['vendorName'] as String?;
    _phoneNumber = snapshotData['phoneNumber'] as String?;
    _billno = snapshotData['billno'] as String?;
    _newspaperpageNo = snapshotData['newspaperpageNo'] as String?;
    _jobref = snapshotData['jobref'] as DocumentReference?;
    _ronumber = snapshotData['Ronumber'] as String?;
    _clerkDivision = castToType<int>(snapshotData['clerkDivision']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Invoice_Request');

  static Stream<InvoiceRequestRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InvoiceRequestRecord.fromSnapshot(s));

  static Future<InvoiceRequestRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => InvoiceRequestRecord.fromSnapshot(s));

  static InvoiceRequestRecord fromSnapshot(DocumentSnapshot snapshot) =>
      InvoiceRequestRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InvoiceRequestRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InvoiceRequestRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InvoiceRequestRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InvoiceRequestRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInvoiceRequestRecordData({
  DateTime? dueDate,
  DateTime? dateOfInvoice,
  int? status,
  DocumentReference? userref,
  String? typeOfDepartment,
  String? invoiceUrl,
  DocumentReference? advertiseRef,
  String? newspaperclip,
  String? assistantReview,
  String? deputydirecotor,
  String? directorReview,
  String? faoReview,
  int? assitanttatus,
  int? deputyDirectorStatus,
  int? directorStatus,
  int? faoStatus,
  double? invoiceamount,
  String? vendorName,
  String? phoneNumber,
  String? billno,
  String? newspaperpageNo,
  DocumentReference? jobref,
  String? ronumber,
  int? clerkDivision,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'DueDate': dueDate,
      'DateOfInvoice': dateOfInvoice,
      'Status': status,
      'Userref': userref,
      'TypeOfDepartment': typeOfDepartment,
      'InvoiceUrl': invoiceUrl,
      'advertiseRef': advertiseRef,
      'Newspaperclip': newspaperclip,
      'Assistant_Review': assistantReview,
      'deputydirecotor': deputydirecotor,
      'directorReview': directorReview,
      'FaoReview': faoReview,
      'Assitanttatus': assitanttatus,
      'deputyDirector_status': deputyDirectorStatus,
      'director_status': directorStatus,
      'Fao_status': faoStatus,
      'invoiceamount': invoiceamount,
      'vendorName': vendorName,
      'phoneNumber': phoneNumber,
      'billno': billno,
      'newspaperpageNo': newspaperpageNo,
      'jobref': jobref,
      'Ronumber': ronumber,
      'clerkDivision': clerkDivision,
    }.withoutNulls,
  );

  return firestoreData;
}

class InvoiceRequestRecordDocumentEquality
    implements Equality<InvoiceRequestRecord> {
  const InvoiceRequestRecordDocumentEquality();

  @override
  bool equals(InvoiceRequestRecord? e1, InvoiceRequestRecord? e2) {
    return e1?.dueDate == e2?.dueDate &&
        e1?.dateOfInvoice == e2?.dateOfInvoice &&
        e1?.status == e2?.status &&
        e1?.userref == e2?.userref &&
        e1?.typeOfDepartment == e2?.typeOfDepartment &&
        e1?.invoiceUrl == e2?.invoiceUrl &&
        e1?.advertiseRef == e2?.advertiseRef &&
        e1?.newspaperclip == e2?.newspaperclip &&
        e1?.assistantReview == e2?.assistantReview &&
        e1?.deputydirecotor == e2?.deputydirecotor &&
        e1?.directorReview == e2?.directorReview &&
        e1?.faoReview == e2?.faoReview &&
        e1?.assitanttatus == e2?.assitanttatus &&
        e1?.deputyDirectorStatus == e2?.deputyDirectorStatus &&
        e1?.directorStatus == e2?.directorStatus &&
        e1?.faoStatus == e2?.faoStatus &&
        e1?.invoiceamount == e2?.invoiceamount &&
        e1?.vendorName == e2?.vendorName &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.billno == e2?.billno &&
        e1?.newspaperpageNo == e2?.newspaperpageNo &&
        e1?.jobref == e2?.jobref &&
        e1?.ronumber == e2?.ronumber &&
        e1?.clerkDivision == e2?.clerkDivision;
  }

  @override
  int hash(InvoiceRequestRecord? e) => const ListEquality().hash([
        e?.dueDate,
        e?.dateOfInvoice,
        e?.status,
        e?.userref,
        e?.typeOfDepartment,
        e?.invoiceUrl,
        e?.advertiseRef,
        e?.newspaperclip,
        e?.assistantReview,
        e?.deputydirecotor,
        e?.directorReview,
        e?.faoReview,
        e?.assitanttatus,
        e?.deputyDirectorStatus,
        e?.directorStatus,
        e?.faoStatus,
        e?.invoiceamount,
        e?.vendorName,
        e?.phoneNumber,
        e?.billno,
        e?.newspaperpageNo,
        e?.jobref,
        e?.ronumber,
        e?.clerkDivision
      ]);

  @override
  bool isValidKey(Object? o) => o is InvoiceRequestRecord;
}
