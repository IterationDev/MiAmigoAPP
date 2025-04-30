import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CatG4Record extends FirestoreRecord {
  CatG4Record._(
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
      FirebaseFirestore.instance.collection('CatG4');

  static Stream<CatG4Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CatG4Record.fromSnapshot(s));

  static Future<CatG4Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CatG4Record.fromSnapshot(s));

  static CatG4Record fromSnapshot(DocumentSnapshot snapshot) => CatG4Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CatG4Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CatG4Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CatG4Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CatG4Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCatG4RecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}

class CatG4RecordDocumentEquality implements Equality<CatG4Record> {
  const CatG4RecordDocumentEquality();

  @override
  bool equals(CatG4Record? e1, CatG4Record? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.discapacidad, e2?.discapacidad);
  }

  @override
  int hash(CatG4Record? e) => const ListEquality().hash([e?.discapacidad]);

  @override
  bool isValidKey(Object? o) => o is CatG4Record;
}
