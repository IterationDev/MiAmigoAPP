import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersAuthRecord extends FirestoreRecord {
  UsersAuthRecord._(
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

  // "phone1Name" field.
  String? _phone1Name;
  String get phone1Name => _phone1Name ?? '';
  bool hasPhone1Name() => _phone1Name != null;

  // "phone1" field.
  String? _phone1;
  String get phone1 => _phone1 ?? '';
  bool hasPhone1() => _phone1 != null;

  // "phone2Name" field.
  String? _phone2Name;
  String get phone2Name => _phone2Name ?? '';
  bool hasPhone2Name() => _phone2Name != null;

  // "phone2" field.
  String? _phone2;
  String get phone2 => _phone2 ?? '';
  bool hasPhone2() => _phone2 != null;

  // "phone3Name" field.
  String? _phone3Name;
  String get phone3Name => _phone3Name ?? '';
  bool hasPhone3Name() => _phone3Name != null;

  // "phone3" field.
  String? _phone3;
  String get phone3 => _phone3 ?? '';
  bool hasPhone3() => _phone3 != null;

  // "birthday" field.
  String? _birthday;
  String get birthday => _birthday ?? '';
  bool hasBirthday() => _birthday != null;

  // "catDisc" field.
  String? _catDisc;
  String get catDisc => _catDisc ?? '';
  bool hasCatDisc() => _catDisc != null;

  // "tipDisc" field.
  String? _tipDisc;
  String get tipDisc => _tipDisc ?? '';
  bool hasTipDisc() => _tipDisc != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phone1Name = snapshotData['phone1Name'] as String?;
    _phone1 = snapshotData['phone1'] as String?;
    _phone2Name = snapshotData['phone2Name'] as String?;
    _phone2 = snapshotData['phone2'] as String?;
    _phone3Name = snapshotData['phone3Name'] as String?;
    _phone3 = snapshotData['phone3'] as String?;
    _birthday = snapshotData['birthday'] as String?;
    _catDisc = snapshotData['catDisc'] as String?;
    _tipDisc = snapshotData['tipDisc'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('usersAuth');

  static Stream<UsersAuthRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersAuthRecord.fromSnapshot(s));

  static Future<UsersAuthRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersAuthRecord.fromSnapshot(s));

  static UsersAuthRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UsersAuthRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersAuthRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersAuthRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersAuthRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersAuthRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersAuthRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phone1Name,
  String? phone1,
  String? phone2Name,
  String? phone2,
  String? phone3Name,
  String? phone3,
  String? birthday,
  String? catDisc,
  String? tipDisc,
  String? phoneNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone1Name': phone1Name,
      'phone1': phone1,
      'phone2Name': phone2Name,
      'phone2': phone2,
      'phone3Name': phone3Name,
      'phone3': phone3,
      'birthday': birthday,
      'catDisc': catDisc,
      'tipDisc': tipDisc,
      'phone_number': phoneNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersAuthRecordDocumentEquality implements Equality<UsersAuthRecord> {
  const UsersAuthRecordDocumentEquality();

  @override
  bool equals(UsersAuthRecord? e1, UsersAuthRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phone1Name == e2?.phone1Name &&
        e1?.phone1 == e2?.phone1 &&
        e1?.phone2Name == e2?.phone2Name &&
        e1?.phone2 == e2?.phone2 &&
        e1?.phone3Name == e2?.phone3Name &&
        e1?.phone3 == e2?.phone3 &&
        e1?.birthday == e2?.birthday &&
        e1?.catDisc == e2?.catDisc &&
        e1?.tipDisc == e2?.tipDisc &&
        e1?.phoneNumber == e2?.phoneNumber;
  }

  @override
  int hash(UsersAuthRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phone1Name,
        e?.phone1,
        e?.phone2Name,
        e?.phone2,
        e?.phone3Name,
        e?.phone3,
        e?.birthday,
        e?.catDisc,
        e?.tipDisc,
        e?.phoneNumber
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersAuthRecord;
}
