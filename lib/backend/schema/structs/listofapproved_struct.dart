// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ListofapprovedStruct extends FFFirebaseStruct {
  ListofapprovedStruct({
    String? id,
    DocumentReference? adref,
    DateTime? date,
    String? departmenttype,
    String? description,
    DocumentReference? invoiceref,
    int? deputyStatus,
    int? directorStatus,
    int? faoStatus,
    double? amount,
    DocumentReference? userrerf,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _adref = adref,
        _date = date,
        _departmenttype = departmenttype,
        _description = description,
        _invoiceref = invoiceref,
        _deputyStatus = deputyStatus,
        _directorStatus = directorStatus,
        _faoStatus = faoStatus,
        _amount = amount,
        _userrerf = userrerf,
        super(firestoreUtilData);

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;
  bool hasId() => _id != null;

  // "adref" field.
  DocumentReference? _adref;
  DocumentReference? get adref => _adref;
  set adref(DocumentReference? val) => _adref = val;
  bool hasAdref() => _adref != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  set date(DateTime? val) => _date = val;
  bool hasDate() => _date != null;

  // "departmenttype" field.
  String? _departmenttype;
  String get departmenttype => _departmenttype ?? '';
  set departmenttype(String? val) => _departmenttype = val;
  bool hasDepartmenttype() => _departmenttype != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;
  bool hasDescription() => _description != null;

  // "invoiceref" field.
  DocumentReference? _invoiceref;
  DocumentReference? get invoiceref => _invoiceref;
  set invoiceref(DocumentReference? val) => _invoiceref = val;
  bool hasInvoiceref() => _invoiceref != null;

  // "deputyStatus" field.
  int? _deputyStatus;
  int get deputyStatus => _deputyStatus ?? 0;
  set deputyStatus(int? val) => _deputyStatus = val;
  void incrementDeputyStatus(int amount) =>
      _deputyStatus = deputyStatus + amount;
  bool hasDeputyStatus() => _deputyStatus != null;

  // "directorStatus" field.
  int? _directorStatus;
  int get directorStatus => _directorStatus ?? 0;
  set directorStatus(int? val) => _directorStatus = val;
  void incrementDirectorStatus(int amount) =>
      _directorStatus = directorStatus + amount;
  bool hasDirectorStatus() => _directorStatus != null;

  // "FaoStatus" field.
  int? _faoStatus;
  int get faoStatus => _faoStatus ?? 0;
  set faoStatus(int? val) => _faoStatus = val;
  void incrementFaoStatus(int amount) => _faoStatus = faoStatus + amount;
  bool hasFaoStatus() => _faoStatus != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  set amount(double? val) => _amount = val;
  void incrementAmount(double amount) => _amount = amount + amount;
  bool hasAmount() => _amount != null;

  // "userrerf" field.
  DocumentReference? _userrerf;
  DocumentReference? get userrerf => _userrerf;
  set userrerf(DocumentReference? val) => _userrerf = val;
  bool hasUserrerf() => _userrerf != null;

  static ListofapprovedStruct fromMap(Map<String, dynamic> data) =>
      ListofapprovedStruct(
        id: data['id'] as String?,
        adref: data['adref'] as DocumentReference?,
        date: data['date'] as DateTime?,
        departmenttype: data['departmenttype'] as String?,
        description: data['description'] as String?,
        invoiceref: data['invoiceref'] as DocumentReference?,
        deputyStatus: castToType<int>(data['deputyStatus']),
        directorStatus: castToType<int>(data['directorStatus']),
        faoStatus: castToType<int>(data['FaoStatus']),
        amount: castToType<double>(data['amount']),
        userrerf: data['userrerf'] as DocumentReference?,
      );

  static ListofapprovedStruct? maybeFromMap(dynamic data) => data is Map
      ? ListofapprovedStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'adref': _adref,
        'date': _date,
        'departmenttype': _departmenttype,
        'description': _description,
        'invoiceref': _invoiceref,
        'deputyStatus': _deputyStatus,
        'directorStatus': _directorStatus,
        'FaoStatus': _faoStatus,
        'amount': _amount,
        'userrerf': _userrerf,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'adref': serializeParam(
          _adref,
          ParamType.DocumentReference,
        ),
        'date': serializeParam(
          _date,
          ParamType.DateTime,
        ),
        'departmenttype': serializeParam(
          _departmenttype,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'invoiceref': serializeParam(
          _invoiceref,
          ParamType.DocumentReference,
        ),
        'deputyStatus': serializeParam(
          _deputyStatus,
          ParamType.int,
        ),
        'directorStatus': serializeParam(
          _directorStatus,
          ParamType.int,
        ),
        'FaoStatus': serializeParam(
          _faoStatus,
          ParamType.int,
        ),
        'amount': serializeParam(
          _amount,
          ParamType.double,
        ),
        'userrerf': serializeParam(
          _userrerf,
          ParamType.DocumentReference,
        ),
      }.withoutNulls;

  static ListofapprovedStruct fromSerializableMap(Map<String, dynamic> data) =>
      ListofapprovedStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        adref: deserializeParam(
          data['adref'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['Advertisement'],
        ),
        date: deserializeParam(
          data['date'],
          ParamType.DateTime,
          false,
        ),
        departmenttype: deserializeParam(
          data['departmenttype'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        invoiceref: deserializeParam(
          data['invoiceref'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['Invoice_Request'],
        ),
        deputyStatus: deserializeParam(
          data['deputyStatus'],
          ParamType.int,
          false,
        ),
        directorStatus: deserializeParam(
          data['directorStatus'],
          ParamType.int,
          false,
        ),
        faoStatus: deserializeParam(
          data['FaoStatus'],
          ParamType.int,
          false,
        ),
        amount: deserializeParam(
          data['amount'],
          ParamType.double,
          false,
        ),
        userrerf: deserializeParam(
          data['userrerf'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['Users'],
        ),
      );

  @override
  String toString() => 'ListofapprovedStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ListofapprovedStruct &&
        id == other.id &&
        adref == other.adref &&
        date == other.date &&
        departmenttype == other.departmenttype &&
        description == other.description &&
        invoiceref == other.invoiceref &&
        deputyStatus == other.deputyStatus &&
        directorStatus == other.directorStatus &&
        faoStatus == other.faoStatus &&
        amount == other.amount &&
        userrerf == other.userrerf;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        adref,
        date,
        departmenttype,
        description,
        invoiceref,
        deputyStatus,
        directorStatus,
        faoStatus,
        amount,
        userrerf
      ]);
}

ListofapprovedStruct createListofapprovedStruct({
  String? id,
  DocumentReference? adref,
  DateTime? date,
  String? departmenttype,
  String? description,
  DocumentReference? invoiceref,
  int? deputyStatus,
  int? directorStatus,
  int? faoStatus,
  double? amount,
  DocumentReference? userrerf,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ListofapprovedStruct(
      id: id,
      adref: adref,
      date: date,
      departmenttype: departmenttype,
      description: description,
      invoiceref: invoiceref,
      deputyStatus: deputyStatus,
      directorStatus: directorStatus,
      faoStatus: faoStatus,
      amount: amount,
      userrerf: userrerf,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ListofapprovedStruct? updateListofapprovedStruct(
  ListofapprovedStruct? listofapproved, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    listofapproved
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addListofapprovedStructData(
  Map<String, dynamic> firestoreData,
  ListofapprovedStruct? listofapproved,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (listofapproved == null) {
    return;
  }
  if (listofapproved.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && listofapproved.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final listofapprovedData =
      getListofapprovedFirestoreData(listofapproved, forFieldValue);
  final nestedData =
      listofapprovedData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = listofapproved.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getListofapprovedFirestoreData(
  ListofapprovedStruct? listofapproved, [
  bool forFieldValue = false,
]) {
  if (listofapproved == null) {
    return {};
  }
  final firestoreData = mapToFirestore(listofapproved.toMap());

  // Add any Firestore field values
  listofapproved.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getListofapprovedListFirestoreData(
  List<ListofapprovedStruct>? listofapproveds,
) =>
    listofapproveds
        ?.map((e) => getListofapprovedFirestoreData(e, true))
        .toList() ??
    [];
