import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "isAdmin" field.
  bool? _isAdmin;
  bool get isAdmin => _isAdmin ?? false;
  bool hasIsAdmin() => _isAdmin != null;

  // "isDeputy" field.
  bool? _isDeputy;
  bool get isDeputy => _isDeputy ?? false;
  bool hasIsDeputy() => _isDeputy != null;

  // "isFoa" field.
  bool? _isFoa;
  bool get isFoa => _isFoa ?? false;
  bool hasIsFoa() => _isFoa != null;

  // "isVendor" field.
  bool? _isVendor;
  bool get isVendor => _isVendor ?? false;
  bool hasIsVendor() => _isVendor != null;

  // "isCaseWorker" field.
  bool? _isCaseWorker;
  bool get isCaseWorker => _isCaseWorker ?? false;
  bool hasIsCaseWorker() => _isCaseWorker != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "isDepartment" field.
  bool? _isDepartment;
  bool get isDepartment => _isDepartment ?? false;
  bool hasIsDepartment() => _isDepartment != null;

  // "departmentType" field.
  String? _departmentType;
  String get departmentType => _departmentType ?? '';
  bool hasDepartmentType() => _departmentType != null;

  // "type_face_size" field.
  String? _typeFaceSize;
  String get typeFaceSize => _typeFaceSize ?? '';
  bool hasTypeFaceSize() => _typeFaceSize != null;

  // "isDirector" field.
  bool? _isDirector;
  bool get isDirector => _isDirector ?? false;
  bool hasIsDirector() => _isDirector != null;

  // "isAssistant" field.
  bool? _isAssistant;
  bool get isAssistant => _isAssistant ?? false;
  bool hasIsAssistant() => _isAssistant != null;

  // "isnationalnewspaper" field.
  bool? _isnationalnewspaper;
  bool get isnationalnewspaper => _isnationalnewspaper ?? false;
  bool hasIsnationalnewspaper() => _isnationalnewspaper != null;

  // "advertisementref" field.
  DocumentReference? _advertisementref;
  DocumentReference? get advertisementref => _advertisementref;
  bool hasAdvertisementref() => _advertisementref != null;

  // "RegionalNewspaper" field.
  bool? _regionalNewspaper;
  bool get regionalNewspaper => _regionalNewspaper ?? false;
  bool hasRegionalNewspaper() => _regionalNewspaper != null;

  // "localnewspapers" field.
  bool? _localnewspapers;
  bool get localnewspapers => _localnewspapers ?? false;
  bool hasLocalnewspapers() => _localnewspapers != null;

  // "isAccountant" field.
  bool? _isAccountant;
  bool get isAccountant => _isAccountant ?? false;
  bool hasIsAccountant() => _isAccountant != null;

  // "isLdc1" field.
  bool? _isLdc1;
  bool get isLdc1 => _isLdc1 ?? false;
  bool hasIsLdc1() => _isLdc1 != null;

  // "isLdc2" field.
  bool? _isLdc2;
  bool get isLdc2 => _isLdc2 ?? false;
  bool hasIsLdc2() => _isLdc2 != null;

  // "isUDC" field.
  bool? _isUDC;
  bool get isUDC => _isUDC ?? false;
  bool hasIsUDC() => _isUDC != null;

  // "vendorId" field.
  int? _vendorId;
  int get vendorId => _vendorId ?? 0;
  bool hasVendorId() => _vendorId != null;

  // "IsSc" field.
  bool? _isSc;
  bool get isSc => _isSc ?? false;
  bool hasIsSc() => _isSc != null;

  // "ClerkId" field.
  int? _clerkId;
  int get clerkId => _clerkId ?? 0;
  bool hasClerkId() => _clerkId != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _isAdmin = snapshotData['isAdmin'] as bool?;
    _isDeputy = snapshotData['isDeputy'] as bool?;
    _isFoa = snapshotData['isFoa'] as bool?;
    _isVendor = snapshotData['isVendor'] as bool?;
    _isCaseWorker = snapshotData['isCaseWorker'] as bool?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _isDepartment = snapshotData['isDepartment'] as bool?;
    _departmentType = snapshotData['departmentType'] as String?;
    _typeFaceSize = snapshotData['type_face_size'] as String?;
    _isDirector = snapshotData['isDirector'] as bool?;
    _isAssistant = snapshotData['isAssistant'] as bool?;
    _isnationalnewspaper = snapshotData['isnationalnewspaper'] as bool?;
    _advertisementref = snapshotData['advertisementref'] as DocumentReference?;
    _regionalNewspaper = snapshotData['RegionalNewspaper'] as bool?;
    _localnewspapers = snapshotData['localnewspapers'] as bool?;
    _isAccountant = snapshotData['isAccountant'] as bool?;
    _isLdc1 = snapshotData['isLdc1'] as bool?;
    _isLdc2 = snapshotData['isLdc2'] as bool?;
    _isUDC = snapshotData['isUDC'] as bool?;
    _vendorId = castToType<int>(snapshotData['vendorId']);
    _isSc = snapshotData['IsSc'] as bool?;
    _clerkId = castToType<int>(snapshotData['ClerkId']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? uid,
  DateTime? createdTime,
  bool? isAdmin,
  bool? isDeputy,
  bool? isFoa,
  bool? isVendor,
  bool? isCaseWorker,
  String? photoUrl,
  String? phoneNumber,
  bool? isDepartment,
  String? departmentType,
  String? typeFaceSize,
  bool? isDirector,
  bool? isAssistant,
  bool? isnationalnewspaper,
  DocumentReference? advertisementref,
  bool? regionalNewspaper,
  bool? localnewspapers,
  bool? isAccountant,
  bool? isLdc1,
  bool? isLdc2,
  bool? isUDC,
  int? vendorId,
  bool? isSc,
  int? clerkId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'uid': uid,
      'created_time': createdTime,
      'isAdmin': isAdmin,
      'isDeputy': isDeputy,
      'isFoa': isFoa,
      'isVendor': isVendor,
      'isCaseWorker': isCaseWorker,
      'photo_url': photoUrl,
      'phone_number': phoneNumber,
      'isDepartment': isDepartment,
      'departmentType': departmentType,
      'type_face_size': typeFaceSize,
      'isDirector': isDirector,
      'isAssistant': isAssistant,
      'isnationalnewspaper': isnationalnewspaper,
      'advertisementref': advertisementref,
      'RegionalNewspaper': regionalNewspaper,
      'localnewspapers': localnewspapers,
      'isAccountant': isAccountant,
      'isLdc1': isLdc1,
      'isLdc2': isLdc2,
      'isUDC': isUDC,
      'vendorId': vendorId,
      'IsSc': isSc,
      'ClerkId': clerkId,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.isAdmin == e2?.isAdmin &&
        e1?.isDeputy == e2?.isDeputy &&
        e1?.isFoa == e2?.isFoa &&
        e1?.isVendor == e2?.isVendor &&
        e1?.isCaseWorker == e2?.isCaseWorker &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.isDepartment == e2?.isDepartment &&
        e1?.departmentType == e2?.departmentType &&
        e1?.typeFaceSize == e2?.typeFaceSize &&
        e1?.isDirector == e2?.isDirector &&
        e1?.isAssistant == e2?.isAssistant &&
        e1?.isnationalnewspaper == e2?.isnationalnewspaper &&
        e1?.advertisementref == e2?.advertisementref &&
        e1?.regionalNewspaper == e2?.regionalNewspaper &&
        e1?.localnewspapers == e2?.localnewspapers &&
        e1?.isAccountant == e2?.isAccountant &&
        e1?.isLdc1 == e2?.isLdc1 &&
        e1?.isLdc2 == e2?.isLdc2 &&
        e1?.isUDC == e2?.isUDC &&
        e1?.vendorId == e2?.vendorId &&
        e1?.isSc == e2?.isSc &&
        e1?.clerkId == e2?.clerkId;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.uid,
        e?.createdTime,
        e?.isAdmin,
        e?.isDeputy,
        e?.isFoa,
        e?.isVendor,
        e?.isCaseWorker,
        e?.photoUrl,
        e?.phoneNumber,
        e?.isDepartment,
        e?.departmentType,
        e?.typeFaceSize,
        e?.isDirector,
        e?.isAssistant,
        e?.isnationalnewspaper,
        e?.advertisementref,
        e?.regionalNewspaper,
        e?.localnewspapers,
        e?.isAccountant,
        e?.isLdc1,
        e?.isLdc2,
        e?.isUDC,
        e?.vendorId,
        e?.isSc,
        e?.clerkId
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
