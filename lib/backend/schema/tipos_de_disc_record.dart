import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TiposDeDiscRecord extends FirestoreRecord {
  TiposDeDiscRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Tipo" field.
  List<String>? _tipo;
  List<String> get tipo => _tipo ?? const [];
  bool hasTipo() => _tipo != null;

  void _initializeFields() {
    _tipo = getDataList(snapshotData['Tipo']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('TiposDeDisc');

  static Stream<TiposDeDiscRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TiposDeDiscRecord.fromSnapshot(s));

  static Future<TiposDeDiscRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TiposDeDiscRecord.fromSnapshot(s));

  static TiposDeDiscRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TiposDeDiscRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TiposDeDiscRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TiposDeDiscRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TiposDeDiscRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TiposDeDiscRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTiposDeDiscRecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}

class TiposDeDiscRecordDocumentEquality implements Equality<TiposDeDiscRecord> {
  const TiposDeDiscRecordDocumentEquality();

  @override
  bool equals(TiposDeDiscRecord? e1, TiposDeDiscRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.tipo, e2?.tipo);
  }

  @override
  int hash(TiposDeDiscRecord? e) => const ListEquality().hash([e?.tipo]);

  @override
  bool isValidKey(Object? o) => o is TiposDeDiscRecord;
}
