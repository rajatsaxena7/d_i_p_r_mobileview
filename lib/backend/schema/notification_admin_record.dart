import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotificationAdminRecord extends FirestoreRecord {
  NotificationAdminRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "Documentref" field.
  DocumentReference? _documentref;
  DocumentReference? get documentref => _documentref;
  bool hasDocumentref() => _documentref != null;

  // "Created" field.
  DateTime? _created;
  DateTime? get created => _created;
  bool hasCreated() => _created != null;

  // "userref" field.
  List<DocumentReference>? _userref;
  List<DocumentReference> get userref => _userref ?? const [];
  bool hasUserref() => _userref != null;

  // "adminref" field.
  String? _adminref;
  String get adminref => _adminref ?? '';
  bool hasAdminref() => _adminref != null;

  // "foa_ref" field.
  String? _foaRef;
  String get foaRef => _foaRef ?? '';
  bool hasFoaRef() => _foaRef != null;

  // "isdeputy" field.
  bool? _isdeputy;
  bool get isdeputy => _isdeputy ?? false;
  bool hasIsdeputy() => _isdeputy != null;

  // "isFoa" field.
  bool? _isFoa;
  bool get isFoa => _isFoa ?? false;
  bool hasIsFoa() => _isFoa != null;

  // "isDirector" field.
  bool? _isDirector;
  bool get isDirector => _isDirector ?? false;
  bool hasIsDirector() => _isDirector != null;

  // "isVendor" field.
  bool? _isVendor;
  bool get isVendor => _isVendor ?? false;
  bool hasIsVendor() => _isVendor != null;

  // "issecretary" field.
  bool? _issecretary;
  bool get issecretary => _issecretary ?? false;
  bool hasIssecretary() => _issecretary != null;

  // "isAccountant" field.
  bool? _isAccountant;
  bool get isAccountant => _isAccountant ?? false;
  bool hasIsAccountant() => _isAccountant != null;

  // "isldc1" field.
  bool? _isldc1;
  bool get isldc1 => _isldc1 ?? false;
  bool hasIsldc1() => _isldc1 != null;

  // "isldc2" field.
  bool? _isldc2;
  bool get isldc2 => _isldc2 ?? false;
  bool hasIsldc2() => _isldc2 != null;

  // "isudc" field.
  bool? _isudc;
  bool get isudc => _isudc ?? false;
  bool hasIsudc() => _isudc != null;

  // "assistantstate" field.
  int? _assistantstate;
  int get assistantstate => _assistantstate ?? 0;
  bool hasAssistantstate() => _assistantstate != null;

  // "assistantdashboard" field.
  bool? _assistantdashboard;
  bool get assistantdashboard => _assistantdashboard ?? false;
  bool hasAssistantdashboard() => _assistantdashboard != null;

  // "isnew" field.
  bool? _isnew;
  bool get isnew => _isnew ?? false;
  bool hasIsnew() => _isnew != null;

  void _initializeFields() {
    _title = snapshotData['Title'] as String?;
    _documentref = snapshotData['Documentref'] as DocumentReference?;
    _created = snapshotData['Created'] as DateTime?;
    _userref = getDataList(snapshotData['userref']);
    _adminref = snapshotData['adminref'] as String?;
    _foaRef = snapshotData['foa_ref'] as String?;
    _isdeputy = snapshotData['isdeputy'] as bool?;
    _isFoa = snapshotData['isFoa'] as bool?;
    _isDirector = snapshotData['isDirector'] as bool?;
    _isVendor = snapshotData['isVendor'] as bool?;
    _issecretary = snapshotData['issecretary'] as bool?;
    _isAccountant = snapshotData['isAccountant'] as bool?;
    _isldc1 = snapshotData['isldc1'] as bool?;
    _isldc2 = snapshotData['isldc2'] as bool?;
    _isudc = snapshotData['isudc'] as bool?;
    _assistantstate = castToType<int>(snapshotData['assistantstate']);
    _assistantdashboard = snapshotData['assistantdashboard'] as bool?;
    _isnew = snapshotData['isnew'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('notification_Admin');

  static Stream<NotificationAdminRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NotificationAdminRecord.fromSnapshot(s));

  static Future<NotificationAdminRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => NotificationAdminRecord.fromSnapshot(s));

  static NotificationAdminRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NotificationAdminRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NotificationAdminRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NotificationAdminRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NotificationAdminRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NotificationAdminRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNotificationAdminRecordData({
  String? title,
  DocumentReference? documentref,
  DateTime? created,
  String? adminref,
  String? foaRef,
  bool? isdeputy,
  bool? isFoa,
  bool? isDirector,
  bool? isVendor,
  bool? issecretary,
  bool? isAccountant,
  bool? isldc1,
  bool? isldc2,
  bool? isudc,
  int? assistantstate,
  bool? assistantdashboard,
  bool? isnew,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Title': title,
      'Documentref': documentref,
      'Created': created,
      'adminref': adminref,
      'foa_ref': foaRef,
      'isdeputy': isdeputy,
      'isFoa': isFoa,
      'isDirector': isDirector,
      'isVendor': isVendor,
      'issecretary': issecretary,
      'isAccountant': isAccountant,
      'isldc1': isldc1,
      'isldc2': isldc2,
      'isudc': isudc,
      'assistantstate': assistantstate,
      'assistantdashboard': assistantdashboard,
      'isnew': isnew,
    }.withoutNulls,
  );

  return firestoreData;
}

class NotificationAdminRecordDocumentEquality
    implements Equality<NotificationAdminRecord> {
  const NotificationAdminRecordDocumentEquality();

  @override
  bool equals(NotificationAdminRecord? e1, NotificationAdminRecord? e2) {
    const listEquality = ListEquality();
    return e1?.title == e2?.title &&
        e1?.documentref == e2?.documentref &&
        e1?.created == e2?.created &&
        listEquality.equals(e1?.userref, e2?.userref) &&
        e1?.adminref == e2?.adminref &&
        e1?.foaRef == e2?.foaRef &&
        e1?.isdeputy == e2?.isdeputy &&
        e1?.isFoa == e2?.isFoa &&
        e1?.isDirector == e2?.isDirector &&
        e1?.isVendor == e2?.isVendor &&
        e1?.issecretary == e2?.issecretary &&
        e1?.isAccountant == e2?.isAccountant &&
        e1?.isldc1 == e2?.isldc1 &&
        e1?.isldc2 == e2?.isldc2 &&
        e1?.isudc == e2?.isudc &&
        e1?.assistantstate == e2?.assistantstate &&
        e1?.assistantdashboard == e2?.assistantdashboard &&
        e1?.isnew == e2?.isnew;
  }

  @override
  int hash(NotificationAdminRecord? e) => const ListEquality().hash([
        e?.title,
        e?.documentref,
        e?.created,
        e?.userref,
        e?.adminref,
        e?.foaRef,
        e?.isdeputy,
        e?.isFoa,
        e?.isDirector,
        e?.isVendor,
        e?.issecretary,
        e?.isAccountant,
        e?.isldc1,
        e?.isldc2,
        e?.isudc,
        e?.assistantstate,
        e?.assistantdashboard,
        e?.isnew
      ]);

  @override
  bool isValidKey(Object? o) => o is NotificationAdminRecord;
}
