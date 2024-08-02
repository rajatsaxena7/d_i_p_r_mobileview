// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LogsStruct extends FFFirebaseStruct {
  LogsStruct({
    DocumentReference? userref,
    DateTime? time,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _userref = userref,
        _time = time,
        super(firestoreUtilData);

  // "userref" field.
  DocumentReference? _userref;
  DocumentReference? get userref => _userref;
  set userref(DocumentReference? val) => _userref = val;
  bool hasUserref() => _userref != null;

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  set time(DateTime? val) => _time = val;
  bool hasTime() => _time != null;

  static LogsStruct fromMap(Map<String, dynamic> data) => LogsStruct(
        userref: data['userref'] as DocumentReference?,
        time: data['time'] as DateTime?,
      );

  static LogsStruct? maybeFromMap(dynamic data) =>
      data is Map ? LogsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'userref': _userref,
        'time': _time,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'userref': serializeParam(
          _userref,
          ParamType.DocumentReference,
        ),
        'time': serializeParam(
          _time,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static LogsStruct fromSerializableMap(Map<String, dynamic> data) =>
      LogsStruct(
        userref: deserializeParam(
          data['userref'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['Users'],
        ),
        time: deserializeParam(
          data['time'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'LogsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LogsStruct &&
        userref == other.userref &&
        time == other.time;
  }

  @override
  int get hashCode => const ListEquality().hash([userref, time]);
}

LogsStruct createLogsStruct({
  DocumentReference? userref,
  DateTime? time,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    LogsStruct(
      userref: userref,
      time: time,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

LogsStruct? updateLogsStruct(
  LogsStruct? logs, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    logs
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addLogsStructData(
  Map<String, dynamic> firestoreData,
  LogsStruct? logs,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (logs == null) {
    return;
  }
  if (logs.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && logs.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final logsData = getLogsFirestoreData(logs, forFieldValue);
  final nestedData = logsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = logs.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getLogsFirestoreData(
  LogsStruct? logs, [
  bool forFieldValue = false,
]) {
  if (logs == null) {
    return {};
  }
  final firestoreData = mapToFirestore(logs.toMap());

  // Add any Firestore field values
  logs.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getLogsListFirestoreData(
  List<LogsStruct>? logss,
) =>
    logss?.map((e) => getLogsFirestoreData(e, true)).toList() ?? [];
