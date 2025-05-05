import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SentimientosPositivosRecord extends FirestoreRecord {
  SentimientosPositivosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "ilustracion" field.
  String? _ilustracion;
  String get ilustracion => _ilustracion ?? '';
  bool hasIlustracion() => _ilustracion != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "nivel1" field.
  String? _nivel1;
  String get nivel1 => _nivel1 ?? '';
  bool hasNivel1() => _nivel1 != null;

  // "nivel2" field.
  String? _nivel2;
  String get nivel2 => _nivel2 ?? '';
  bool hasNivel2() => _nivel2 != null;

  // "nivel3" field.
  String? _nivel3;
  String get nivel3 => _nivel3 ?? '';
  bool hasNivel3() => _nivel3 != null;

  void _initializeFields() {
    _ilustracion = snapshotData['ilustracion'] as String?;
    _name = snapshotData['name'] as String?;
    _nivel1 = snapshotData['nivel1'] as String?;
    _nivel2 = snapshotData['nivel2'] as String?;
    _nivel3 = snapshotData['nivel3'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('sentimientos_Positivos');

  static Stream<SentimientosPositivosRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => SentimientosPositivosRecord.fromSnapshot(s));

  static Future<SentimientosPositivosRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => SentimientosPositivosRecord.fromSnapshot(s));

  static SentimientosPositivosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SentimientosPositivosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SentimientosPositivosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SentimientosPositivosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SentimientosPositivosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SentimientosPositivosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSentimientosPositivosRecordData({
  String? ilustracion,
  String? name,
  String? nivel1,
  String? nivel2,
  String? nivel3,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ilustracion': ilustracion,
      'name': name,
      'nivel1': nivel1,
      'nivel2': nivel2,
      'nivel3': nivel3,
    }.withoutNulls,
  );

  return firestoreData;
}

class SentimientosPositivosRecordDocumentEquality
    implements Equality<SentimientosPositivosRecord> {
  const SentimientosPositivosRecordDocumentEquality();

  @override
  bool equals(
      SentimientosPositivosRecord? e1, SentimientosPositivosRecord? e2) {
    return e1?.ilustracion == e2?.ilustracion &&
        e1?.name == e2?.name &&
        e1?.nivel1 == e2?.nivel1 &&
        e1?.nivel2 == e2?.nivel2 &&
        e1?.nivel3 == e2?.nivel3;
  }

  @override
  int hash(SentimientosPositivosRecord? e) => const ListEquality()
      .hash([e?.ilustracion, e?.name, e?.nivel1, e?.nivel2, e?.nivel3]);

  @override
  bool isValidKey(Object? o) => o is SentimientosPositivosRecord;
}
