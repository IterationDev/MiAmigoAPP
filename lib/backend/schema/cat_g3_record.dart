import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CatG3Record extends FirestoreRecord {
  CatG3Record._(
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
      FirebaseFirestore.instance.collection('CatG3');

  static Stream<CatG3Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CatG3Record.fromSnapshot(s));

  static Future<CatG3Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CatG3Record.fromSnapshot(s));

  static CatG3Record fromSnapshot(DocumentSnapshot snapshot) => CatG3Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CatG3Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CatG3Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CatG3Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CatG3Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCatG3RecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}

class CatG3RecordDocumentEquality implements Equality<CatG3Record> {
  const CatG3RecordDocumentEquality();

  @override
  bool equals(CatG3Record? e1, CatG3Record? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.discapacidad, e2?.discapacidad);
  }

  @override
  int hash(CatG3Record? e) => const ListEquality().hash([e?.discapacidad]);

  @override
  bool isValidKey(Object? o) => o is CatG3Record;
}
