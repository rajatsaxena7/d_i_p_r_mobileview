import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class LogsRecord extends FirestoreRecord {
  LogsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Logins" field.
  List<LogsStruct>? _logins;
  List<LogsStruct> get logins => _logins ?? const [];
  bool hasLogins() => _logins != null;

  // "Logouts" field.
  List<LogsStruct>? _logouts;
  List<LogsStruct> get logouts => _logouts ?? const [];
  bool hasLogouts() => _logouts != null;

  void _initializeFields() {
    _logins = getStructList(
      snapshotData['Logins'],
      LogsStruct.fromMap,
    );
    _logouts = getStructList(
      snapshotData['Logouts'],
      LogsStruct.fromMap,
    );
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Logs');

  static Stream<LogsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LogsRecord.fromSnapshot(s));

  static Future<LogsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LogsRecord.fromSnapshot(s));

  static LogsRecord fromSnapshot(DocumentSnapshot snapshot) => LogsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LogsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LogsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LogsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LogsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLogsRecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}

class LogsRecordDocumentEquality implements Equality<LogsRecord> {
  const LogsRecordDocumentEquality();

  @override
  bool equals(LogsRecord? e1, LogsRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.logins, e2?.logins) &&
        listEquality.equals(e1?.logouts, e2?.logouts);
  }

  @override
  int hash(LogsRecord? e) => const ListEquality().hash([e?.logins, e?.logouts]);

  @override
  bool isValidKey(Object? o) => o is LogsRecord;
}
