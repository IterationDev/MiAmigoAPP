import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TutorsAuthRecord extends FirestoreRecord {
  TutorsAuthRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "edited_time" field.
  DateTime? _editedTime;
  DateTime? get editedTime => _editedTime;
  bool hasEditedTime() => _editedTime != null;

  // "pasword" field.
  String? _pasword;
  String get pasword => _pasword ?? '';
  bool hasPasword() => _pasword != null;

  // "usersAsigned" field.
  List<DocumentReference>? _usersAsigned;
  List<DocumentReference> get usersAsigned => _usersAsigned ?? const [];
  bool hasUsersAsigned() => _usersAsigned != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _editedTime = snapshotData['edited_time'] as DateTime?;
    _pasword = snapshotData['pasword'] as String?;
    _usersAsigned = getDataList(snapshotData['usersAsigned']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tutorsAuth');

  static Stream<TutorsAuthRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TutorsAuthRecord.fromSnapshot(s));

  static Future<TutorsAuthRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TutorsAuthRecord.fromSnapshot(s));

  static TutorsAuthRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TutorsAuthRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TutorsAuthRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TutorsAuthRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TutorsAuthRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TutorsAuthRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTutorsAuthRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  DateTime? editedTime,
  String? pasword,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'edited_time': editedTime,
      'pasword': pasword,
    }.withoutNulls,
  );

  return firestoreData;
}

class TutorsAuthRecordDocumentEquality implements Equality<TutorsAuthRecord> {
  const TutorsAuthRecordDocumentEquality();

  @override
  bool equals(TutorsAuthRecord? e1, TutorsAuthRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.editedTime == e2?.editedTime &&
        e1?.pasword == e2?.pasword &&
        listEquality.equals(e1?.usersAsigned, e2?.usersAsigned);
  }

  @override
  int hash(TutorsAuthRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.editedTime,
        e?.pasword,
        e?.usersAsigned
      ]);

  @override
  bool isValidKey(Object? o) => o is TutorsAuthRecord;
}
