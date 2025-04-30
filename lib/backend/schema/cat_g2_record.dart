import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CatG2Record extends FirestoreRecord {
  CatG2Record._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Discapacidad" field.
  List<String>? _discapacidad;
  List<String> get discapacidad => _discapacidad ?? const [];
  bool hasDiscapacidad() => _discapacidad != null;

  void _initializeFields() {
    _discapacidad = getDataList(snapshotData['Discapacidad']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('CatG2');

  static Stream<CatG2Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CatG2Record.fromSnapshot(s));

  static Future<CatG2Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CatG2Record.fromSnapshot(s));

  static CatG2Record fromSnapshot(DocumentSnapshot snapshot) => CatG2Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CatG2Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CatG2Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CatG2Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CatG2Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCatG2RecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}

class CatG2RecordDocumentEquality implements Equality<CatG2Record> {
  const CatG2RecordDocumentEquality();

  @override
  bool equals(CatG2Record? e1, CatG2Record? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.discapacidad, e2?.discapacidad);
  }

  @override
  int hash(CatG2Record? e) => const ListEquality().hash([e?.discapacidad]);

  @override
  bool isValidKey(Object? o) => o is CatG2Record;
}
