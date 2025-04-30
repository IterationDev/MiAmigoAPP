import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CatG1Record extends FirestoreRecord {
  CatG1Record._(
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
      FirebaseFirestore.instance.collection('CatG1');

  static Stream<CatG1Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CatG1Record.fromSnapshot(s));

  static Future<CatG1Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CatG1Record.fromSnapshot(s));

  static CatG1Record fromSnapshot(DocumentSnapshot snapshot) => CatG1Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CatG1Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CatG1Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CatG1Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CatG1Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCatG1RecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}

class CatG1RecordDocumentEquality implements Equality<CatG1Record> {
  const CatG1RecordDocumentEquality();

  @override
  bool equals(CatG1Record? e1, CatG1Record? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.discapacidad, e2?.discapacidad);
  }

  @override
  int hash(CatG1Record? e) => const ListEquality().hash([e?.discapacidad]);

  @override
  bool isValidKey(Object? o) => o is CatG1Record;
}
