import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ParsedResumeRecord extends FirestoreRecord {
  ParsedResumeRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "educations" field.
  List<DocumentReference>? _educations;
  List<DocumentReference> get educations => _educations ?? const [];
  bool hasEducations() => _educations != null;

  // "experiences" field.
  List<DocumentReference>? _experiences;
  List<DocumentReference> get experiences => _experiences ?? const [];
  bool hasExperiences() => _experiences != null;

  // "projects" field.
  List<DocumentReference>? _projects;
  List<DocumentReference> get projects => _projects ?? const [];
  bool hasProjects() => _projects != null;

  // "skills" field.
  List<DocumentReference>? _skills;
  List<DocumentReference> get skills => _skills ?? const [];
  bool hasSkills() => _skills != null;

  // "requests" field.
  DocumentReference? _requests;
  DocumentReference? get requests => _requests;
  bool hasRequests() => _requests != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _educations = getDataList(snapshotData['educations']);
    _experiences = getDataList(snapshotData['experiences']);
    _projects = getDataList(snapshotData['projects']);
    _skills = getDataList(snapshotData['skills']);
    _requests = snapshotData['requests'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ParsedResume');

  static Stream<ParsedResumeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ParsedResumeRecord.fromSnapshot(s));

  static Future<ParsedResumeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ParsedResumeRecord.fromSnapshot(s));

  static ParsedResumeRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ParsedResumeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ParsedResumeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ParsedResumeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ParsedResumeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ParsedResumeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createParsedResumeRecordData({
  String? name,
  DocumentReference? requests,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'requests': requests,
    }.withoutNulls,
  );

  return firestoreData;
}

class ParsedResumeRecordDocumentEquality
    implements Equality<ParsedResumeRecord> {
  const ParsedResumeRecordDocumentEquality();

  @override
  bool equals(ParsedResumeRecord? e1, ParsedResumeRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        listEquality.equals(e1?.educations, e2?.educations) &&
        listEquality.equals(e1?.experiences, e2?.experiences) &&
        listEquality.equals(e1?.projects, e2?.projects) &&
        listEquality.equals(e1?.skills, e2?.skills) &&
        e1?.requests == e2?.requests;
  }

  @override
  int hash(ParsedResumeRecord? e) => const ListEquality().hash([
        e?.name,
        e?.educations,
        e?.experiences,
        e?.projects,
        e?.skills,
        e?.requests
      ]);

  @override
  bool isValidKey(Object? o) => o is ParsedResumeRecord;
}
