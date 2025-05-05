import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SentimientosNeutrosRecord extends FirestoreRecord {
  SentimientosNeutrosRecord._(
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
      FirebaseFirestore.instance.collection('sentimientos_Neutros');

  static Stream<SentimientosNeutrosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SentimientosNeutrosRecord.fromSnapshot(s));

  static Future<SentimientosNeutrosRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => SentimientosNeutrosRecord.fromSnapshot(s));

  static SentimientosNeutrosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SentimientosNeutrosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SentimientosNeutrosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SentimientosNeutrosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SentimientosNeutrosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SentimientosNeutrosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSentimientosNeutrosRecordData({
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

class SentimientosNeutrosRecordDocumentEquality
    implements Equality<SentimientosNeutrosRecord> {
  const SentimientosNeutrosRecordDocumentEquality();

  @override
  bool equals(SentimientosNeutrosRecord? e1, SentimientosNeutrosRecord? e2) {
    return e1?.ilustracion == e2?.ilustracion &&
        e1?.name == e2?.name &&
        e1?.nivel1 == e2?.nivel1 &&
        e1?.nivel2 == e2?.nivel2 &&
        e1?.nivel3 == e2?.nivel3;
  }

  @override
  int hash(SentimientosNeutrosRecord? e) => const ListEquality()
      .hash([e?.ilustracion, e?.name, e?.nivel1, e?.nivel2, e?.nivel3]);

  @override
  bool isValidKey(Object? o) => o is SentimientosNeutrosRecord;
}
