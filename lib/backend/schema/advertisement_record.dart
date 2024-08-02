import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AdvertisementRecord extends FirestoreRecord {
  AdvertisementRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "AdvertisementId" field.
  String? _advertisementId;
  String get advertisementId => _advertisementId ?? '';
  bool hasAdvertisementId() => _advertisementId != null;

  // "DateOfApplication" field.
  DateTime? _dateOfApplication;
  DateTime? get dateOfApplication => _dateOfApplication;
  bool hasDateOfApplication() => _dateOfApplication != null;

  // "TypeOfAdvertisement" field.
  String? _typeOfAdvertisement;
  String get typeOfAdvertisement => _typeOfAdvertisement ?? '';
  bool hasTypeOfAdvertisement() => _typeOfAdvertisement != null;

  // "Subject" field.
  String? _subject;
  String get subject => _subject ?? '';
  bool hasSubject() => _subject != null;

  // "Body" field.
  String? _body;
  String get body => _body ?? '';
  bool hasBody() => _body != null;

  // "CurrentRole" field.
  String? _currentRole;
  String get currentRole => _currentRole ?? '';
  bool hasCurrentRole() => _currentRole != null;

  // "DateOfApproval" field.
  DateTime? _dateOfApproval;
  DateTime? get dateOfApproval => _dateOfApproval;
  bool hasDateOfApproval() => _dateOfApproval != null;

  // "Budget" field.
  double? _budget;
  double get budget => _budget ?? 0.0;
  bool hasBudget() => _budget != null;

  // "RequestLetter" field.
  String? _requestLetter;
  String get requestLetter => _requestLetter ?? '';
  bool hasRequestLetter() => _requestLetter != null;

  // "Department" field.
  DocumentReference? _department;
  DocumentReference? get department => _department;
  bool hasDepartment() => _department != null;

  // "DateOfRejection" field.
  DateTime? _dateOfRejection;
  DateTime? get dateOfRejection => _dateOfRejection;
  bool hasDateOfRejection() => _dateOfRejection != null;

  // "DateOfPublishing" field.
  DateTime? _dateOfPublishing;
  DateTime? get dateOfPublishing => _dateOfPublishing;
  bool hasDateOfPublishing() => _dateOfPublishing != null;

  // "Feedback" field.
  String? _feedback;
  String get feedback => _feedback ?? '';
  bool hasFeedback() => _feedback != null;

  // "Posted" field.
  DocumentReference? _posted;
  DocumentReference? get posted => _posted;
  bool hasPosted() => _posted != null;

  // "AddressTo" field.
  String? _addressTo;
  String get addressTo => _addressTo ?? '';
  bool hasAddressTo() => _addressTo != null;

  // "Is_CaseWorker" field.
  bool? _isCaseWorker;
  bool get isCaseWorker => _isCaseWorker ?? false;
  bool hasIsCaseWorker() => _isCaseWorker != null;

  // "Is_Deputy" field.
  bool? _isDeputy;
  bool get isDeputy => _isDeputy ?? false;
  bool hasIsDeputy() => _isDeputy != null;

  // "Is_fao" field.
  bool? _isFao;
  bool get isFao => _isFao ?? false;
  bool hasIsFao() => _isFao != null;

  // "Is_Vendor" field.
  bool? _isVendor;
  bool get isVendor => _isVendor ?? false;
  bool hasIsVendor() => _isVendor != null;

  // "Status_Caseworker" field.
  int? _statusCaseworker;
  int get statusCaseworker => _statusCaseworker ?? 0;
  bool hasStatusCaseworker() => _statusCaseworker != null;

  // "Status_Deputy" field.
  int? _statusDeputy;
  int get statusDeputy => _statusDeputy ?? 0;
  bool hasStatusDeputy() => _statusDeputy != null;

  // "Status_Fao" field.
  int? _statusFao;
  int get statusFao => _statusFao ?? 0;
  bool hasStatusFao() => _statusFao != null;

  // "Status_Vendor" field.
  int? _statusVendor;
  int get statusVendor => _statusVendor ?? 0;
  bool hasStatusVendor() => _statusVendor != null;

  // "isSubmitted" field.
  bool? _isSubmitted;
  bool get isSubmitted => _isSubmitted ?? false;
  bool hasIsSubmitted() => _isSubmitted != null;

  // "isDarft" field.
  bool? _isDarft;
  bool get isDarft => _isDarft ?? false;
  bool hasIsDarft() => _isDarft != null;

  // "Bearingno" field.
  String? _bearingno;
  String get bearingno => _bearingno ?? '';
  bool hasBearingno() => _bearingno != null;

  // "Insertion" field.
  String? _insertion;
  String get insertion => _insertion ?? '';
  bool hasInsertion() => _insertion != null;

  // "Edition" field.
  String? _edition;
  String get edition => _edition ?? '';
  bool hasEdition() => _edition != null;

  // "Release_order_no" field.
  String? _releaseOrderNo;
  String get releaseOrderNo => _releaseOrderNo ?? '';
  bool hasReleaseOrderNo() => _releaseOrderNo != null;

  // "Department_name" field.
  String? _departmentName;
  String get departmentName => _departmentName ?? '';
  bool hasDepartmentName() => _departmentName != null;

  // "type_face_size" field.
  String? _typeFaceSize;
  String get typeFaceSize => _typeFaceSize ?? '';
  bool hasTypeFaceSize() => _typeFaceSize != null;

  // "ListOfUploads" field.
  List<String>? _listOfUploads;
  List<String> get listOfUploads => _listOfUploads ?? const [];
  bool hasListOfUploads() => _listOfUploads != null;

  // "Invoiceref" field.
  DocumentReference? _invoiceref;
  DocumentReference? get invoiceref => _invoiceref;
  bool hasInvoiceref() => _invoiceref != null;

  // "Invoice_Assistant" field.
  int? _invoiceAssistant;
  int get invoiceAssistant => _invoiceAssistant ?? 0;
  bool hasInvoiceAssistant() => _invoiceAssistant != null;

  // "Invoice_deputy" field.
  int? _invoiceDeputy;
  int get invoiceDeputy => _invoiceDeputy ?? 0;
  bool hasInvoiceDeputy() => _invoiceDeputy != null;

  // "Invoice_director" field.
  int? _invoiceDirector;
  int get invoiceDirector => _invoiceDirector ?? 0;
  bool hasInvoiceDirector() => _invoiceDirector != null;

  // "Invoice_Fao" field.
  int? _invoiceFao;
  int get invoiceFao => _invoiceFao ?? 0;
  bool hasInvoiceFao() => _invoiceFao != null;

  // "isuploaded" field.
  bool? _isuploaded;
  bool get isuploaded => _isuploaded ?? false;
  bool hasIsuploaded() => _isuploaded != null;

  // "ListofPdf" field.
  List<String>? _listofPdf;
  List<String> get listofPdf => _listofPdf ?? const [];
  bool hasListofPdf() => _listofPdf != null;

  // "listofnewspaper" field.
  List<String>? _listofnewspaper;
  List<String> get listofnewspaper => _listofnewspaper ?? const [];
  bool hasListofnewspaper() => _listofnewspaper != null;

  // "isnational" field.
  bool? _isnational;
  bool get isnational => _isnational ?? false;
  bool hasIsnational() => _isnational != null;

  // "isbothnationalandlocal" field.
  bool? _isbothnationalandlocal;
  bool get isbothnationalandlocal => _isbothnationalandlocal ?? false;
  bool hasIsbothnationalandlocal() => _isbothnationalandlocal != null;

  // "Statuses" field.
  List<String>? _statuses;
  List<String> get statuses => _statuses ?? const [];
  bool hasStatuses() => _statuses != null;

  // "approvednationalnewspapers" field.
  List<DocumentReference>? _approvednationalnewspapers;
  List<DocumentReference> get approvednationalnewspapers =>
      _approvednationalnewspapers ?? const [];
  bool hasApprovednationalnewspapers() => _approvednationalnewspapers != null;

  // "Joballocatedvendors" field.
  List<DocumentReference>? _joballocatedvendors;
  List<DocumentReference> get joballocatedvendors =>
      _joballocatedvendors ?? const [];
  bool hasJoballocatedvendors() => _joballocatedvendors != null;

  // "allotednewspapers" field.
  List<DocumentReference>? _allotednewspapers;
  List<DocumentReference> get allotednewspapers =>
      _allotednewspapers ?? const [];
  bool hasAllotednewspapers() => _allotednewspapers != null;

  // "approvednewspaperslocal" field.
  List<DocumentReference>? _approvednewspaperslocal;
  List<DocumentReference> get approvednewspaperslocal =>
      _approvednewspaperslocal ?? const [];
  bool hasApprovednewspaperslocal() => _approvednewspaperslocal != null;

  // "assitantdetailref" field.
  DocumentReference? _assitantdetailref;
  DocumentReference? get assitantdetailref => _assitantdetailref;
  bool hasAssitantdetailref() => _assitantdetailref != null;

  // "invoicerisedvendors" field.
  DocumentReference? _invoicerisedvendors;
  DocumentReference? get invoicerisedvendors => _invoicerisedvendors;
  bool hasInvoicerisedvendors() => _invoicerisedvendors != null;

  // "invoicerefList" field.
  List<DocumentReference>? _invoicerefList;
  List<DocumentReference> get invoicerefList => _invoicerefList ?? const [];
  bool hasInvoicerefList() => _invoicerefList != null;

  // "Editionlist" field.
  List<String>? _editionlist;
  List<String> get editionlist => _editionlist ?? const [];
  bool hasEditionlist() => _editionlist != null;

  // "RegionalNewspaper" field.
  bool? _regionalNewspaper;
  bool get regionalNewspaper => _regionalNewspaper ?? false;
  bool hasRegionalNewspaper() => _regionalNewspaper != null;

  // "localnewspapers" field.
  bool? _localnewspapers;
  bool get localnewspapers => _localnewspapers ?? false;
  bool hasLocalnewspapers() => _localnewspapers != null;

  // "caseworkerdraftnewspapers" field.
  List<DocumentReference>? _caseworkerdraftnewspapers;
  List<DocumentReference> get caseworkerdraftnewspapers =>
      _caseworkerdraftnewspapers ?? const [];
  bool hasCaseworkerdraftnewspapers() => _caseworkerdraftnewspapers != null;

  // "manuallyallotted" field.
  bool? _manuallyallotted;
  bool get manuallyallotted => _manuallyallotted ?? false;
  bool hasManuallyallotted() => _manuallyallotted != null;

  // "manuallyallottednewspapers" field.
  List<DocumentReference>? _manuallyallottednewspapers;
  List<DocumentReference> get manuallyallottednewspapers =>
      _manuallyallottednewspapers ?? const [];
  bool hasManuallyallottednewspapers() => _manuallyallottednewspapers != null;

  // "IsrequesPending" field.
  bool? _isrequesPending;
  bool get isrequesPending => _isrequesPending ?? false;
  bool hasIsrequesPending() => _isrequesPending != null;

  // "SecretKey" field.
  String? _secretKey;
  String get secretKey => _secretKey ?? '';
  bool hasSecretKey() => _secretKey != null;

  // "RODATE" field.
  DateTime? _rodate;
  DateTime? get rodate => _rodate;
  bool hasRodate() => _rodate != null;

  // "ronumberallocation" field.
  List<DocumentReference>? _ronumberallocation;
  List<DocumentReference> get ronumberallocation =>
      _ronumberallocation ?? const [];
  bool hasRonumberallocation() => _ronumberallocation != null;

  // "isRAised" field.
  bool? _isRAised;
  bool get isRAised => _isRAised ?? false;
  bool hasIsRAised() => _isRAised != null;

  // "approved" field.
  bool? _approved;
  bool get approved => _approved ?? false;
  bool hasApproved() => _approved != null;

  // "Rejectednewspapers" field.
  List<DocumentReference>? _rejectednewspapers;
  List<DocumentReference> get rejectednewspapers =>
      _rejectednewspapers ?? const [];
  bool hasRejectednewspapers() => _rejectednewspapers != null;

  // "Bill_to" field.
  String? _billTo;
  String get billTo => _billTo ?? '';
  bool hasBillTo() => _billTo != null;

  void _initializeFields() {
    _advertisementId = snapshotData['AdvertisementId'] as String?;
    _dateOfApplication = snapshotData['DateOfApplication'] as DateTime?;
    _typeOfAdvertisement = snapshotData['TypeOfAdvertisement'] as String?;
    _subject = snapshotData['Subject'] as String?;
    _body = snapshotData['Body'] as String?;
    _currentRole = snapshotData['CurrentRole'] as String?;
    _dateOfApproval = snapshotData['DateOfApproval'] as DateTime?;
    _budget = castToType<double>(snapshotData['Budget']);
    _requestLetter = snapshotData['RequestLetter'] as String?;
    _department = snapshotData['Department'] as DocumentReference?;
    _dateOfRejection = snapshotData['DateOfRejection'] as DateTime?;
    _dateOfPublishing = snapshotData['DateOfPublishing'] as DateTime?;
    _feedback = snapshotData['Feedback'] as String?;
    _posted = snapshotData['Posted'] as DocumentReference?;
    _addressTo = snapshotData['AddressTo'] as String?;
    _isCaseWorker = snapshotData['Is_CaseWorker'] as bool?;
    _isDeputy = snapshotData['Is_Deputy'] as bool?;
    _isFao = snapshotData['Is_fao'] as bool?;
    _isVendor = snapshotData['Is_Vendor'] as bool?;
    _statusCaseworker = castToType<int>(snapshotData['Status_Caseworker']);
    _statusDeputy = castToType<int>(snapshotData['Status_Deputy']);
    _statusFao = castToType<int>(snapshotData['Status_Fao']);
    _statusVendor = castToType<int>(snapshotData['Status_Vendor']);
    _isSubmitted = snapshotData['isSubmitted'] as bool?;
    _isDarft = snapshotData['isDarft'] as bool?;
    _bearingno = snapshotData['Bearingno'] as String?;
    _insertion = snapshotData['Insertion'] as String?;
    _edition = snapshotData['Edition'] as String?;
    _releaseOrderNo = snapshotData['Release_order_no'] as String?;
    _departmentName = snapshotData['Department_name'] as String?;
    _typeFaceSize = snapshotData['type_face_size'] as String?;
    _listOfUploads = getDataList(snapshotData['ListOfUploads']);
    _invoiceref = snapshotData['Invoiceref'] as DocumentReference?;
    _invoiceAssistant = castToType<int>(snapshotData['Invoice_Assistant']);
    _invoiceDeputy = castToType<int>(snapshotData['Invoice_deputy']);
    _invoiceDirector = castToType<int>(snapshotData['Invoice_director']);
    _invoiceFao = castToType<int>(snapshotData['Invoice_Fao']);
    _isuploaded = snapshotData['isuploaded'] as bool?;
    _listofPdf = getDataList(snapshotData['ListofPdf']);
    _listofnewspaper = getDataList(snapshotData['listofnewspaper']);
    _isnational = snapshotData['isnational'] as bool?;
    _isbothnationalandlocal = snapshotData['isbothnationalandlocal'] as bool?;
    _statuses = getDataList(snapshotData['Statuses']);
    _approvednationalnewspapers =
        getDataList(snapshotData['approvednationalnewspapers']);
    _joballocatedvendors = getDataList(snapshotData['Joballocatedvendors']);
    _allotednewspapers = getDataList(snapshotData['allotednewspapers']);
    _approvednewspaperslocal =
        getDataList(snapshotData['approvednewspaperslocal']);
    _assitantdetailref =
        snapshotData['assitantdetailref'] as DocumentReference?;
    _invoicerisedvendors =
        snapshotData['invoicerisedvendors'] as DocumentReference?;
    _invoicerefList = getDataList(snapshotData['invoicerefList']);
    _editionlist = getDataList(snapshotData['Editionlist']);
    _regionalNewspaper = snapshotData['RegionalNewspaper'] as bool?;
    _localnewspapers = snapshotData['localnewspapers'] as bool?;
    _caseworkerdraftnewspapers =
        getDataList(snapshotData['caseworkerdraftnewspapers']);
    _manuallyallotted = snapshotData['manuallyallotted'] as bool?;
    _manuallyallottednewspapers =
        getDataList(snapshotData['manuallyallottednewspapers']);
    _isrequesPending = snapshotData['IsrequesPending'] as bool?;
    _secretKey = snapshotData['SecretKey'] as String?;
    _rodate = snapshotData['RODATE'] as DateTime?;
    _ronumberallocation = getDataList(snapshotData['ronumberallocation']);
    _isRAised = snapshotData['isRAised'] as bool?;
    _approved = snapshotData['approved'] as bool?;
    _rejectednewspapers = getDataList(snapshotData['Rejectednewspapers']);
    _billTo = snapshotData['Bill_to'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Advertisement');

  static Stream<AdvertisementRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AdvertisementRecord.fromSnapshot(s));

  static Future<AdvertisementRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AdvertisementRecord.fromSnapshot(s));

  static AdvertisementRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AdvertisementRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AdvertisementRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AdvertisementRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AdvertisementRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AdvertisementRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAdvertisementRecordData({
  String? advertisementId,
  DateTime? dateOfApplication,
  String? typeOfAdvertisement,
  String? subject,
  String? body,
  String? currentRole,
  DateTime? dateOfApproval,
  double? budget,
  String? requestLetter,
  DocumentReference? department,
  DateTime? dateOfRejection,
  DateTime? dateOfPublishing,
  String? feedback,
  DocumentReference? posted,
  String? addressTo,
  bool? isCaseWorker,
  bool? isDeputy,
  bool? isFao,
  bool? isVendor,
  int? statusCaseworker,
  int? statusDeputy,
  int? statusFao,
  int? statusVendor,
  bool? isSubmitted,
  bool? isDarft,
  String? bearingno,
  String? insertion,
  String? edition,
  String? releaseOrderNo,
  String? departmentName,
  String? typeFaceSize,
  DocumentReference? invoiceref,
  int? invoiceAssistant,
  int? invoiceDeputy,
  int? invoiceDirector,
  int? invoiceFao,
  bool? isuploaded,
  bool? isnational,
  bool? isbothnationalandlocal,
  DocumentReference? assitantdetailref,
  DocumentReference? invoicerisedvendors,
  bool? regionalNewspaper,
  bool? localnewspapers,
  bool? manuallyallotted,
  bool? isrequesPending,
  String? secretKey,
  DateTime? rodate,
  bool? isRAised,
  bool? approved,
  String? billTo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'AdvertisementId': advertisementId,
      'DateOfApplication': dateOfApplication,
      'TypeOfAdvertisement': typeOfAdvertisement,
      'Subject': subject,
      'Body': body,
      'CurrentRole': currentRole,
      'DateOfApproval': dateOfApproval,
      'Budget': budget,
      'RequestLetter': requestLetter,
      'Department': department,
      'DateOfRejection': dateOfRejection,
      'DateOfPublishing': dateOfPublishing,
      'Feedback': feedback,
      'Posted': posted,
      'AddressTo': addressTo,
      'Is_CaseWorker': isCaseWorker,
      'Is_Deputy': isDeputy,
      'Is_fao': isFao,
      'Is_Vendor': isVendor,
      'Status_Caseworker': statusCaseworker,
      'Status_Deputy': statusDeputy,
      'Status_Fao': statusFao,
      'Status_Vendor': statusVendor,
      'isSubmitted': isSubmitted,
      'isDarft': isDarft,
      'Bearingno': bearingno,
      'Insertion': insertion,
      'Edition': edition,
      'Release_order_no': releaseOrderNo,
      'Department_name': departmentName,
      'type_face_size': typeFaceSize,
      'Invoiceref': invoiceref,
      'Invoice_Assistant': invoiceAssistant,
      'Invoice_deputy': invoiceDeputy,
      'Invoice_director': invoiceDirector,
      'Invoice_Fao': invoiceFao,
      'isuploaded': isuploaded,
      'isnational': isnational,
      'isbothnationalandlocal': isbothnationalandlocal,
      'assitantdetailref': assitantdetailref,
      'invoicerisedvendors': invoicerisedvendors,
      'RegionalNewspaper': regionalNewspaper,
      'localnewspapers': localnewspapers,
      'manuallyallotted': manuallyallotted,
      'IsrequesPending': isrequesPending,
      'SecretKey': secretKey,
      'RODATE': rodate,
      'isRAised': isRAised,
      'approved': approved,
      'Bill_to': billTo,
    }.withoutNulls,
  );

  return firestoreData;
}

class AdvertisementRecordDocumentEquality
    implements Equality<AdvertisementRecord> {
  const AdvertisementRecordDocumentEquality();

  @override
  bool equals(AdvertisementRecord? e1, AdvertisementRecord? e2) {
    const listEquality = ListEquality();
    return e1?.advertisementId == e2?.advertisementId &&
        e1?.dateOfApplication == e2?.dateOfApplication &&
        e1?.typeOfAdvertisement == e2?.typeOfAdvertisement &&
        e1?.subject == e2?.subject &&
        e1?.body == e2?.body &&
        e1?.currentRole == e2?.currentRole &&
        e1?.dateOfApproval == e2?.dateOfApproval &&
        e1?.budget == e2?.budget &&
        e1?.requestLetter == e2?.requestLetter &&
        e1?.department == e2?.department &&
        e1?.dateOfRejection == e2?.dateOfRejection &&
        e1?.dateOfPublishing == e2?.dateOfPublishing &&
        e1?.feedback == e2?.feedback &&
        e1?.posted == e2?.posted &&
        e1?.addressTo == e2?.addressTo &&
        e1?.isCaseWorker == e2?.isCaseWorker &&
        e1?.isDeputy == e2?.isDeputy &&
        e1?.isFao == e2?.isFao &&
        e1?.isVendor == e2?.isVendor &&
        e1?.statusCaseworker == e2?.statusCaseworker &&
        e1?.statusDeputy == e2?.statusDeputy &&
        e1?.statusFao == e2?.statusFao &&
        e1?.statusVendor == e2?.statusVendor &&
        e1?.isSubmitted == e2?.isSubmitted &&
        e1?.isDarft == e2?.isDarft &&
        e1?.bearingno == e2?.bearingno &&
        e1?.insertion == e2?.insertion &&
        e1?.edition == e2?.edition &&
        e1?.releaseOrderNo == e2?.releaseOrderNo &&
        e1?.departmentName == e2?.departmentName &&
        e1?.typeFaceSize == e2?.typeFaceSize &&
        listEquality.equals(e1?.listOfUploads, e2?.listOfUploads) &&
        e1?.invoiceref == e2?.invoiceref &&
        e1?.invoiceAssistant == e2?.invoiceAssistant &&
        e1?.invoiceDeputy == e2?.invoiceDeputy &&
        e1?.invoiceDirector == e2?.invoiceDirector &&
        e1?.invoiceFao == e2?.invoiceFao &&
        e1?.isuploaded == e2?.isuploaded &&
        listEquality.equals(e1?.listofPdf, e2?.listofPdf) &&
        listEquality.equals(e1?.listofnewspaper, e2?.listofnewspaper) &&
        e1?.isnational == e2?.isnational &&
        e1?.isbothnationalandlocal == e2?.isbothnationalandlocal &&
        listEquality.equals(e1?.statuses, e2?.statuses) &&
        listEquality.equals(
            e1?.approvednationalnewspapers, e2?.approvednationalnewspapers) &&
        listEquality.equals(e1?.joballocatedvendors, e2?.joballocatedvendors) &&
        listEquality.equals(e1?.allotednewspapers, e2?.allotednewspapers) &&
        listEquality.equals(
            e1?.approvednewspaperslocal, e2?.approvednewspaperslocal) &&
        e1?.assitantdetailref == e2?.assitantdetailref &&
        e1?.invoicerisedvendors == e2?.invoicerisedvendors &&
        listEquality.equals(e1?.invoicerefList, e2?.invoicerefList) &&
        listEquality.equals(e1?.editionlist, e2?.editionlist) &&
        e1?.regionalNewspaper == e2?.regionalNewspaper &&
        e1?.localnewspapers == e2?.localnewspapers &&
        listEquality.equals(
            e1?.caseworkerdraftnewspapers, e2?.caseworkerdraftnewspapers) &&
        e1?.manuallyallotted == e2?.manuallyallotted &&
        listEquality.equals(
            e1?.manuallyallottednewspapers, e2?.manuallyallottednewspapers) &&
        e1?.isrequesPending == e2?.isrequesPending &&
        e1?.secretKey == e2?.secretKey &&
        e1?.rodate == e2?.rodate &&
        listEquality.equals(e1?.ronumberallocation, e2?.ronumberallocation) &&
        e1?.isRAised == e2?.isRAised &&
        e1?.approved == e2?.approved &&
        listEquality.equals(e1?.rejectednewspapers, e2?.rejectednewspapers) &&
        e1?.billTo == e2?.billTo;
  }

  @override
  int hash(AdvertisementRecord? e) => const ListEquality().hash([
        e?.advertisementId,
        e?.dateOfApplication,
        e?.typeOfAdvertisement,
        e?.subject,
        e?.body,
        e?.currentRole,
        e?.dateOfApproval,
        e?.budget,
        e?.requestLetter,
        e?.department,
        e?.dateOfRejection,
        e?.dateOfPublishing,
        e?.feedback,
        e?.posted,
        e?.addressTo,
        e?.isCaseWorker,
        e?.isDeputy,
        e?.isFao,
        e?.isVendor,
        e?.statusCaseworker,
        e?.statusDeputy,
        e?.statusFao,
        e?.statusVendor,
        e?.isSubmitted,
        e?.isDarft,
        e?.bearingno,
        e?.insertion,
        e?.edition,
        e?.releaseOrderNo,
        e?.departmentName,
        e?.typeFaceSize,
        e?.listOfUploads,
        e?.invoiceref,
        e?.invoiceAssistant,
        e?.invoiceDeputy,
        e?.invoiceDirector,
        e?.invoiceFao,
        e?.isuploaded,
        e?.listofPdf,
        e?.listofnewspaper,
        e?.isnational,
        e?.isbothnationalandlocal,
        e?.statuses,
        e?.approvednationalnewspapers,
        e?.joballocatedvendors,
        e?.allotednewspapers,
        e?.approvednewspaperslocal,
        e?.assitantdetailref,
        e?.invoicerisedvendors,
        e?.invoicerefList,
        e?.editionlist,
        e?.regionalNewspaper,
        e?.localnewspapers,
        e?.caseworkerdraftnewspapers,
        e?.manuallyallotted,
        e?.manuallyallottednewspapers,
        e?.isrequesPending,
        e?.secretKey,
        e?.rodate,
        e?.ronumberallocation,
        e?.isRAised,
        e?.approved,
        e?.rejectednewspapers,
        e?.billTo
      ]);

  @override
  bool isValidKey(Object? o) => o is AdvertisementRecord;
}
