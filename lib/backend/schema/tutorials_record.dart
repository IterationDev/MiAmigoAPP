import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TutorialsRecord extends FirestoreRecord {
  TutorialsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "cat" field.
  String? _cat;
  String get cat => _cat ?? '';
  bool hasCat() => _cat != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "video" field.
  String? _video;
  String get video => _video ?? '';
  bool hasVideo() => _video != null;

  // "time" field.
  String? _time;
  String get time => _time ?? '';
  bool hasTime() => _time != null;

  // "time2" field.
  double? _time2;
  double get time2 => _time2 ?? 0.0;
  bool hasTime2() => _time2 != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _cat = snapshotData['cat'] as String?;
    _name = snapshotData['name'] as String?;
    _video = snapshotData['video'] as String?;
    _time = snapshotData['time'] as String?;
    _time2 = castToType<double>(snapshotData['time2']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('tutorials')
          : FirebaseFirestore.instance.collectionGroup('tutorials');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('tutorials').doc(id);

  static Stream<TutorialsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TutorialsRecord.fromSnapshot(s));

  static Future<TutorialsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TutorialsRecord.fromSnapshot(s));

  static TutorialsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TutorialsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TutorialsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TutorialsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TutorialsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TutorialsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTutorialsRecordData({
  String? cat,
  String? name,
  String? video,
  String? time,
  double? time2,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'cat': cat,
      'name': name,
      'video': video,
      'time': time,
      'time2': time2,
    }.withoutNulls,
  );

  return firestoreData;
}

class TutorialsRecordDocumentEquality implements Equality<TutorialsRecord> {
  const TutorialsRecordDocumentEquality();

  @override
  bool equals(TutorialsRecord? e1, TutorialsRecord? e2) {
    return e1?.cat == e2?.cat &&
        e1?.name == e2?.name &&
        e1?.video == e2?.video &&
        e1?.time == e2?.time &&
        e1?.time2 == e2?.time2;
  }

  @override
  int hash(TutorialsRecord? e) =>
      const ListEquality().hash([e?.cat, e?.name, e?.video, e?.time, e?.time2]);

  @override
  bool isValidKey(Object? o) => o is TutorialsRecord;
}
