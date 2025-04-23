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

  // "phoneNames" field.
  List<String>? _phoneNames;
  List<String> get phoneNames => _phoneNames ?? const [];
  bool hasPhoneNames() => _phoneNames != null;

  // "phones" field.
  List<String>? _phones;
  List<String> get phones => _phones ?? const [];
  bool hasPhones() => _phones != null;

  // "photo_url_Cont1" field.
  String? _photoUrlCont1;
  String get photoUrlCont1 => _photoUrlCont1 ?? '';
  bool hasPhotoUrlCont1() => _photoUrlCont1 != null;

  // "photo_url_Cont2" field.
  String? _photoUrlCont2;
  String get photoUrlCont2 => _photoUrlCont2 ?? '';
  bool hasPhotoUrlCont2() => _photoUrlCont2 != null;

  // "photo_url_Cont3" field.
  String? _photoUrlCont3;
  String get photoUrlCont3 => _photoUrlCont3 ?? '';
  bool hasPhotoUrlCont3() => _photoUrlCont3 != null;

  // "photo_url_Cont4" field.
  String? _photoUrlCont4;
  String get photoUrlCont4 => _photoUrlCont4 ?? '';
  bool hasPhotoUrlCont4() => _photoUrlCont4 != null;

  // "photo_url_Cont5" field.
  String? _photoUrlCont5;
  String get photoUrlCont5 => _photoUrlCont5 ?? '';
  bool hasPhotoUrlCont5() => _photoUrlCont5 != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _birthday = snapshotData['birthday'] as String?;
    _catDisc = snapshotData['catDisc'] as String?;
    _tipDisc = snapshotData['tipDisc'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _phoneNames = getDataList(snapshotData['phoneNames']);
    _phones = getDataList(snapshotData['phones']);
    _photoUrlCont1 = snapshotData['photo_url_Cont1'] as String?;
    _photoUrlCont2 = snapshotData['photo_url_Cont2'] as String?;
    _photoUrlCont3 = snapshotData['photo_url_Cont3'] as String?;
    _photoUrlCont4 = snapshotData['photo_url_Cont4'] as String?;
    _photoUrlCont5 = snapshotData['photo_url_Cont5'] as String?;
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
  String? birthday,
  String? catDisc,
  String? tipDisc,
  String? phoneNumber,
  String? photoUrlCont1,
  String? photoUrlCont2,
  String? photoUrlCont3,
  String? photoUrlCont4,
  String? photoUrlCont5,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'birthday': birthday,
      'catDisc': catDisc,
      'tipDisc': tipDisc,
      'phone_number': phoneNumber,
      'photo_url_Cont1': photoUrlCont1,
      'photo_url_Cont2': photoUrlCont2,
      'photo_url_Cont3': photoUrlCont3,
      'photo_url_Cont4': photoUrlCont4,
      'photo_url_Cont5': photoUrlCont5,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersAuthRecordDocumentEquality implements Equality<UsersAuthRecord> {
  const UsersAuthRecordDocumentEquality();

  @override
  bool equals(UsersAuthRecord? e1, UsersAuthRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.birthday == e2?.birthday &&
        e1?.catDisc == e2?.catDisc &&
        e1?.tipDisc == e2?.tipDisc &&
        e1?.phoneNumber == e2?.phoneNumber &&
        listEquality.equals(e1?.phoneNames, e2?.phoneNames) &&
        listEquality.equals(e1?.phones, e2?.phones) &&
        e1?.photoUrlCont1 == e2?.photoUrlCont1 &&
        e1?.photoUrlCont2 == e2?.photoUrlCont2 &&
        e1?.photoUrlCont3 == e2?.photoUrlCont3 &&
        e1?.photoUrlCont4 == e2?.photoUrlCont4 &&
        e1?.photoUrlCont5 == e2?.photoUrlCont5;
  }

  @override
  int hash(UsersAuthRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.birthday,
        e?.catDisc,
        e?.tipDisc,
        e?.phoneNumber,
        e?.phoneNames,
        e?.phones,
        e?.photoUrlCont1,
        e?.photoUrlCont2,
        e?.photoUrlCont3,
        e?.photoUrlCont4,
        e?.photoUrlCont5
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersAuthRecord;
}
