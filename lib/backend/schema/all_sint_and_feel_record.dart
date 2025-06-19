import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AllSintAndFeelRecord extends FirestoreRecord {
  AllSintAndFeelRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "allSint" field.
  List<DocumentReference>? _allSint;
  List<DocumentReference> get allSint => _allSint ?? const [];
  bool hasAllSint() => _allSint != null;

  // "allFeelPos" field.
  List<DocumentReference>? _allFeelPos;
  List<DocumentReference> get allFeelPos => _allFeelPos ?? const [];
  bool hasAllFeelPos() => _allFeelPos != null;

  // "allFeelNeg" field.
  List<DocumentReference>? _allFeelNeg;
  List<DocumentReference> get allFeelNeg => _allFeelNeg ?? const [];
  bool hasAllFeelNeg() => _allFeelNeg != null;

  // "allFeelNeu" field.
  List<DocumentReference>? _allFeelNeu;
  List<DocumentReference> get allFeelNeu => _allFeelNeu ?? const [];
  bool hasAllFeelNeu() => _allFeelNeu != null;

  void _initializeFields() {
    _allSint = getDataList(snapshotData['allSint']);
    _allFeelPos = getDataList(snapshotData['allFeelPos']);
    _allFeelNeg = getDataList(snapshotData['allFeelNeg']);
    _allFeelNeu = getDataList(snapshotData['allFeelNeu']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('AllSintAndFeel');

  static Stream<AllSintAndFeelRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AllSintAndFeelRecord.fromSnapshot(s));

  static Future<AllSintAndFeelRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AllSintAndFeelRecord.fromSnapshot(s));

  static AllSintAndFeelRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AllSintAndFeelRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AllSintAndFeelRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AllSintAndFeelRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AllSintAndFeelRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AllSintAndFeelRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAllSintAndFeelRecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}

class AllSintAndFeelRecordDocumentEquality
    implements Equality<AllSintAndFeelRecord> {
  const AllSintAndFeelRecordDocumentEquality();

  @override
  bool equals(AllSintAndFeelRecord? e1, AllSintAndFeelRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.allSint, e2?.allSint) &&
        listEquality.equals(e1?.allFeelPos, e2?.allFeelPos) &&
        listEquality.equals(e1?.allFeelNeg, e2?.allFeelNeg) &&
        listEquality.equals(e1?.allFeelNeu, e2?.allFeelNeu);
  }

  @override
  int hash(AllSintAndFeelRecord? e) => const ListEquality()
      .hash([e?.allSint, e?.allFeelPos, e?.allFeelNeg, e?.allFeelNeu]);

  @override
  bool isValidKey(Object? o) => o is AllSintAndFeelRecord;
}
