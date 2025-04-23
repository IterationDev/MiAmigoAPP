import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ContacsRecord extends FirestoreRecord {
  ContacsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nameCont" field.
  String? _nameCont;
  String get nameCont => _nameCont ?? '';
  bool hasNameCont() => _nameCont != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  bool hasPhone() => _phone != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _nameCont = snapshotData['nameCont'] as String?;
    _phone = snapshotData['phone'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('contacs')
          : FirebaseFirestore.instance.collectionGroup('contacs');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('contacs').doc(id);

  static Stream<ContacsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ContacsRecord.fromSnapshot(s));

  static Future<ContacsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ContacsRecord.fromSnapshot(s));

  static ContacsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ContacsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ContacsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ContacsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ContacsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ContacsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createContacsRecordData({
  String? nameCont,
  String? phone,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nameCont': nameCont,
      'phone': phone,
    }.withoutNulls,
  );

  return firestoreData;
}

class ContacsRecordDocumentEquality implements Equality<ContacsRecord> {
  const ContacsRecordDocumentEquality();

  @override
  bool equals(ContacsRecord? e1, ContacsRecord? e2) {
    return e1?.nameCont == e2?.nameCont && e1?.phone == e2?.phone;
  }

  @override
  int hash(ContacsRecord? e) =>
      const ListEquality().hash([e?.nameCont, e?.phone]);

  @override
  bool isValidKey(Object? o) => o is ContacsRecord;
}
