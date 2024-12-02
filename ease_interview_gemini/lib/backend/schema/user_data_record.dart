import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserDataRecord extends FirestoreRecord {
  UserDataRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "parsed_resume" field.
  DocumentReference? _parsedResume;
  DocumentReference? get parsedResume => _parsedResume;
  bool hasParsedResume() => _parsedResume != null;

  // "previous_requests" field.
  List<DocumentReference>? _previousRequests;
  List<DocumentReference> get previousRequests => _previousRequests ?? const [];
  bool hasPreviousRequests() => _previousRequests != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "short_description" field.
  String? _shortDescription;
  String get shortDescription => _shortDescription ?? '';
  bool hasShortDescription() => _shortDescription != null;

  // "resume_path" field.
  String? _resumePath;
  String get resumePath => _resumePath ?? '';
  bool hasResumePath() => _resumePath != null;

  // "resume_parsed" field.
  String? _resumeParsed;
  String get resumeParsed => _resumeParsed ?? '';
  bool hasResumeParsed() => _resumeParsed != null;

  void _initializeFields() {
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _parsedResume = snapshotData['parsed_resume'] as DocumentReference?;
    _previousRequests = getDataList(snapshotData['previous_requests']);
    _phoneNumber = snapshotData['phone_number'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _email = snapshotData['email'] as String?;
    _shortDescription = snapshotData['short_description'] as String?;
    _resumePath = snapshotData['resume_path'] as String?;
    _resumeParsed = snapshotData['resume_parsed'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('UserData');

  static Stream<UserDataRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserDataRecord.fromSnapshot(s));

  static Future<UserDataRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserDataRecord.fromSnapshot(s));

  static UserDataRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserDataRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserDataRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserDataRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserDataRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserDataRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserDataRecordData({
  String? uid,
  DateTime? createdTime,
  DocumentReference? parsedResume,
  String? phoneNumber,
  String? photoUrl,
  String? displayName,
  String? email,
  String? shortDescription,
  String? resumePath,
  String? resumeParsed,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'uid': uid,
      'created_time': createdTime,
      'parsed_resume': parsedResume,
      'phone_number': phoneNumber,
      'photo_url': photoUrl,
      'display_name': displayName,
      'email': email,
      'short_description': shortDescription,
      'resume_path': resumePath,
      'resume_parsed': resumeParsed,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserDataRecordDocumentEquality implements Equality<UserDataRecord> {
  const UserDataRecordDocumentEquality();

  @override
  bool equals(UserDataRecord? e1, UserDataRecord? e2) {
    const listEquality = ListEquality();
    return e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.parsedResume == e2?.parsedResume &&
        listEquality.equals(e1?.previousRequests, e2?.previousRequests) &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.displayName == e2?.displayName &&
        e1?.email == e2?.email &&
        e1?.shortDescription == e2?.shortDescription &&
        e1?.resumePath == e2?.resumePath &&
        e1?.resumeParsed == e2?.resumeParsed;
  }

  @override
  int hash(UserDataRecord? e) => const ListEquality().hash([
        e?.uid,
        e?.createdTime,
        e?.parsedResume,
        e?.previousRequests,
        e?.phoneNumber,
        e?.photoUrl,
        e?.displayName,
        e?.email,
        e?.shortDescription,
        e?.resumePath,
        e?.resumeParsed
      ]);

  @override
  bool isValidKey(Object? o) => o is UserDataRecord;
}
