import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ApprovedAddRecord extends FirestoreRecord {
  ApprovedAddRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "adddata" field.
  List<ListofapprovedStruct>? _adddata;
  List<ListofapprovedStruct> get adddata => _adddata ?? const [];
  bool hasAdddata() => _adddata != null;

  // "deputyStatus" field.
  int? _deputyStatus;
  int get deputyStatus => _deputyStatus ?? 0;
  bool hasDeputyStatus() => _deputyStatus != null;

  // "directorStatus" field.
  int? _directorStatus;
  int get directorStatus => _directorStatus ?? 0;
  bool hasDirectorStatus() => _directorStatus != null;

  // "FaoStatus" field.
  int? _faoStatus;
  int get faoStatus => _faoStatus ?? 0;
  bool hasFaoStatus() => _faoStatus != null;

  // "FeedbackDeputy" field.
  String? _feedbackDeputy;
  String get feedbackDeputy => _feedbackDeputy ?? '';
  bool hasFeedbackDeputy() => _feedbackDeputy != null;

  // "feedbackDirector" field.
  String? _feedbackDirector;
  String get feedbackDirector => _feedbackDirector ?? '';
  bool hasFeedbackDirector() => _feedbackDirector != null;

  // "feedbackFao" field.
  String? _feedbackFao;
  String get feedbackFao => _feedbackFao ?? '';
  bool hasFeedbackFao() => _feedbackFao != null;

  // "assitantStattus" field.
  int? _assitantStattus;
  int get assitantStattus => _assitantStattus ?? 0;
  bool hasAssitantStattus() => _assitantStattus != null;

  // "assitantFeedback" field.
  String? _assitantFeedback;
  String get assitantFeedback => _assitantFeedback ?? '';
  bool hasAssitantFeedback() => _assitantFeedback != null;

  // "dateofAproval" field.
  DateTime? _dateofAproval;
  DateTime? get dateofAproval => _dateofAproval;
  bool hasDateofAproval() => _dateofAproval != null;

  // "TotalAmount" field.
  double? _totalAmount;
  double get totalAmount => _totalAmount ?? 0.0;
  bool hasTotalAmount() => _totalAmount != null;

  // "ispending" field.
  bool? _ispending;
  bool get ispending => _ispending ?? false;
  bool hasIspending() => _ispending != null;

  // "listofusers" field.
  List<DocumentReference>? _listofusers;
  List<DocumentReference> get listofusers => _listofusers ?? const [];
  bool hasListofusers() => _listofusers != null;

  // "isAssistantpending" field.
  bool? _isAssistantpending;
  bool get isAssistantpending => _isAssistantpending ?? false;
  bool hasIsAssistantpending() => _isAssistantpending != null;

  // "latest" field.
  int? _latest;
  int get latest => _latest ?? 0;
  bool hasLatest() => _latest != null;

  // "division" field.
  int? _division;
  int get division => _division ?? 0;
  bool hasDivision() => _division != null;

  // "isaprroved" field.
  bool? _isaprroved;
  bool get isaprroved => _isaprroved ?? false;
  bool hasIsaprroved() => _isaprroved != null;

  // "sanctionLettter" field.
  String? _sanctionLettter;
  String get sanctionLettter => _sanctionLettter ?? '';
  bool hasSanctionLettter() => _sanctionLettter != null;

  // "accountant_status" field.
  int? _accountantStatus;
  int get accountantStatus => _accountantStatus ?? 0;
  bool hasAccountantStatus() => _accountantStatus != null;

  // "statusSecretary" field.
  int? _statusSecretary;
  int get statusSecretary => _statusSecretary ?? 0;
  bool hasStatusSecretary() => _statusSecretary != null;

  // "feedbacksc" field.
  String? _feedbacksc;
  String get feedbacksc => _feedbacksc ?? '';
  bool hasFeedbacksc() => _feedbacksc != null;

  // "notesheetString" field.
  String? _notesheetString;
  String get notesheetString => _notesheetString ?? '';
  bool hasNotesheetString() => _notesheetString != null;

  // "dateTimeAssistant" field.
  DateTime? _dateTimeAssistant;
  DateTime? get dateTimeAssistant => _dateTimeAssistant;
  bool hasDateTimeAssistant() => _dateTimeAssistant != null;

  // "dateTimeDD" field.
  DateTime? _dateTimeDD;
  DateTime? get dateTimeDD => _dateTimeDD;
  bool hasDateTimeDD() => _dateTimeDD != null;

  // "datetimeDirector" field.
  DateTime? _datetimeDirector;
  DateTime? get datetimeDirector => _datetimeDirector;
  bool hasDatetimeDirector() => _datetimeDirector != null;

  // "datetimeFao" field.
  DateTime? _datetimeFao;
  DateTime? get datetimeFao => _datetimeFao;
  bool hasDatetimeFao() => _datetimeFao != null;

  // "datetimeSc" field.
  DateTime? _datetimeSc;
  DateTime? get datetimeSc => _datetimeSc;
  bool hasDatetimeSc() => _datetimeSc != null;

  // "userref" field.
  DocumentReference? _userref;
  DocumentReference? get userref => _userref;
  bool hasUserref() => _userref != null;

  void _initializeFields() {
    _adddata = getStructList(
      snapshotData['adddata'],
      ListofapprovedStruct.fromMap,
    );
    _deputyStatus = castToType<int>(snapshotData['deputyStatus']);
    _directorStatus = castToType<int>(snapshotData['directorStatus']);
    _faoStatus = castToType<int>(snapshotData['FaoStatus']);
    _feedbackDeputy = snapshotData['FeedbackDeputy'] as String?;
    _feedbackDirector = snapshotData['feedbackDirector'] as String?;
    _feedbackFao = snapshotData['feedbackFao'] as String?;
    _assitantStattus = castToType<int>(snapshotData['assitantStattus']);
    _assitantFeedback = snapshotData['assitantFeedback'] as String?;
    _dateofAproval = snapshotData['dateofAproval'] as DateTime?;
    _totalAmount = castToType<double>(snapshotData['TotalAmount']);
    _ispending = snapshotData['ispending'] as bool?;
    _listofusers = getDataList(snapshotData['listofusers']);
    _isAssistantpending = snapshotData['isAssistantpending'] as bool?;
    _latest = castToType<int>(snapshotData['latest']);
    _division = castToType<int>(snapshotData['division']);
    _isaprroved = snapshotData['isaprroved'] as bool?;
    _sanctionLettter = snapshotData['sanctionLettter'] as String?;
    _accountantStatus = castToType<int>(snapshotData['accountant_status']);
    _statusSecretary = castToType<int>(snapshotData['statusSecretary']);
    _feedbacksc = snapshotData['feedbacksc'] as String?;
    _notesheetString = snapshotData['notesheetString'] as String?;
    _dateTimeAssistant = snapshotData['dateTimeAssistant'] as DateTime?;
    _dateTimeDD = snapshotData['dateTimeDD'] as DateTime?;
    _datetimeDirector = snapshotData['datetimeDirector'] as DateTime?;
    _datetimeFao = snapshotData['datetimeFao'] as DateTime?;
    _datetimeSc = snapshotData['datetimeSc'] as DateTime?;
    _userref = snapshotData['userref'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('approved_add');

  static Stream<ApprovedAddRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ApprovedAddRecord.fromSnapshot(s));

  static Future<ApprovedAddRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ApprovedAddRecord.fromSnapshot(s));

  static ApprovedAddRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ApprovedAddRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ApprovedAddRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ApprovedAddRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ApprovedAddRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ApprovedAddRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createApprovedAddRecordData({
  int? deputyStatus,
  int? directorStatus,
  int? faoStatus,
  String? feedbackDeputy,
  String? feedbackDirector,
  String? feedbackFao,
  int? assitantStattus,
  String? assitantFeedback,
  DateTime? dateofAproval,
  double? totalAmount,
  bool? ispending,
  bool? isAssistantpending,
  int? latest,
  int? division,
  bool? isaprroved,
  String? sanctionLettter,
  int? accountantStatus,
  int? statusSecretary,
  String? feedbacksc,
  String? notesheetString,
  DateTime? dateTimeAssistant,
  DateTime? dateTimeDD,
  DateTime? datetimeDirector,
  DateTime? datetimeFao,
  DateTime? datetimeSc,
  DocumentReference? userref,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'deputyStatus': deputyStatus,
      'directorStatus': directorStatus,
      'FaoStatus': faoStatus,
      'FeedbackDeputy': feedbackDeputy,
      'feedbackDirector': feedbackDirector,
      'feedbackFao': feedbackFao,
      'assitantStattus': assitantStattus,
      'assitantFeedback': assitantFeedback,
      'dateofAproval': dateofAproval,
      'TotalAmount': totalAmount,
      'ispending': ispending,
      'isAssistantpending': isAssistantpending,
      'latest': latest,
      'division': division,
      'isaprroved': isaprroved,
      'sanctionLettter': sanctionLettter,
      'accountant_status': accountantStatus,
      'statusSecretary': statusSecretary,
      'feedbacksc': feedbacksc,
      'notesheetString': notesheetString,
      'dateTimeAssistant': dateTimeAssistant,
      'dateTimeDD': dateTimeDD,
      'datetimeDirector': datetimeDirector,
      'datetimeFao': datetimeFao,
      'datetimeSc': datetimeSc,
      'userref': userref,
    }.withoutNulls,
  );

  return firestoreData;
}

class ApprovedAddRecordDocumentEquality implements Equality<ApprovedAddRecord> {
  const ApprovedAddRecordDocumentEquality();

  @override
  bool equals(ApprovedAddRecord? e1, ApprovedAddRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.adddata, e2?.adddata) &&
        e1?.deputyStatus == e2?.deputyStatus &&
        e1?.directorStatus == e2?.directorStatus &&
        e1?.faoStatus == e2?.faoStatus &&
        e1?.feedbackDeputy == e2?.feedbackDeputy &&
        e1?.feedbackDirector == e2?.feedbackDirector &&
        e1?.feedbackFao == e2?.feedbackFao &&
        e1?.assitantStattus == e2?.assitantStattus &&
        e1?.assitantFeedback == e2?.assitantFeedback &&
        e1?.dateofAproval == e2?.dateofAproval &&
        e1?.totalAmount == e2?.totalAmount &&
        e1?.ispending == e2?.ispending &&
        listEquality.equals(e1?.listofusers, e2?.listofusers) &&
        e1?.isAssistantpending == e2?.isAssistantpending &&
        e1?.latest == e2?.latest &&
        e1?.division == e2?.division &&
        e1?.isaprroved == e2?.isaprroved &&
        e1?.sanctionLettter == e2?.sanctionLettter &&
        e1?.accountantStatus == e2?.accountantStatus &&
        e1?.statusSecretary == e2?.statusSecretary &&
        e1?.feedbacksc == e2?.feedbacksc &&
        e1?.notesheetString == e2?.notesheetString &&
        e1?.dateTimeAssistant == e2?.dateTimeAssistant &&
        e1?.dateTimeDD == e2?.dateTimeDD &&
        e1?.datetimeDirector == e2?.datetimeDirector &&
        e1?.datetimeFao == e2?.datetimeFao &&
        e1?.datetimeSc == e2?.datetimeSc &&
        e1?.userref == e2?.userref;
  }

  @override
  int hash(ApprovedAddRecord? e) => const ListEquality().hash([
        e?.adddata,
        e?.deputyStatus,
        e?.directorStatus,
        e?.faoStatus,
        e?.feedbackDeputy,
        e?.feedbackDirector,
        e?.feedbackFao,
        e?.assitantStattus,
        e?.assitantFeedback,
        e?.dateofAproval,
        e?.totalAmount,
        e?.ispending,
        e?.listofusers,
        e?.isAssistantpending,
        e?.latest,
        e?.division,
        e?.isaprroved,
        e?.sanctionLettter,
        e?.accountantStatus,
        e?.statusSecretary,
        e?.feedbacksc,
        e?.notesheetString,
        e?.dateTimeAssistant,
        e?.dateTimeDD,
        e?.datetimeDirector,
        e?.datetimeFao,
        e?.datetimeSc,
        e?.userref
      ]);

  @override
  bool isValidKey(Object? o) => o is ApprovedAddRecord;
}
