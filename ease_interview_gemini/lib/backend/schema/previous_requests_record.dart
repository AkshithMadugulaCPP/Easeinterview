import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PreviousRequestsRecord extends FirestoreRecord {
  PreviousRequestsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "job_title" field.
  String? _jobTitle;
  String get jobTitle => _jobTitle ?? '';
  bool hasJobTitle() => _jobTitle != null;

  // "job_description" field.
  String? _jobDescription;
  String get jobDescription => _jobDescription ?? '';
  bool hasJobDescription() => _jobDescription != null;

  // "job_requirements" field.
  String? _jobRequirements;
  String get jobRequirements => _jobRequirements ?? '';
  bool hasJobRequirements() => _jobRequirements != null;

  // "resume_used" field.
  DocumentReference? _resumeUsed;
  DocumentReference? get resumeUsed => _resumeUsed;
  bool hasResumeUsed() => _resumeUsed != null;

  // "resume_score" field.
  double? _resumeScore;
  double get resumeScore => _resumeScore ?? 0.0;
  bool hasResumeScore() => _resumeScore != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "interview_questions" field.
  List<DocumentReference>? _interviewQuestions;
  List<DocumentReference> get interviewQuestions =>
      _interviewQuestions ?? const [];
  bool hasInterviewQuestions() => _interviewQuestions != null;

  // "job_uid" field.
  int? _jobUid;
  int get jobUid => _jobUid ?? 0;
  bool hasJobUid() => _jobUid != null;

  // "parsed_resume" field.
  String? _parsedResume;
  String get parsedResume => _parsedResume ?? '';
  bool hasParsedResume() => _parsedResume != null;

  // "Suggestions" field.
  List<String>? _suggestions;
  List<String> get suggestions => _suggestions ?? const [];
  bool hasSuggestions() => _suggestions != null;

  // "profile_summary" field.
  String? _profileSummary;
  String get profileSummary => _profileSummary ?? '';
  bool hasProfileSummary() => _profileSummary != null;

  // "company_name" field.
  String? _companyName;
  String get companyName => _companyName ?? '';
  bool hasCompanyName() => _companyName != null;

  void _initializeFields() {
    _jobTitle = snapshotData['job_title'] as String?;
    _jobDescription = snapshotData['job_description'] as String?;
    _jobRequirements = snapshotData['job_requirements'] as String?;
    _resumeUsed = snapshotData['resume_used'] as DocumentReference?;
    _resumeScore = castToType<double>(snapshotData['resume_score']);
    _date = snapshotData['date'] as DateTime?;
    _interviewQuestions = getDataList(snapshotData['interview_questions']);
    _jobUid = castToType<int>(snapshotData['job_uid']);
    _parsedResume = snapshotData['parsed_resume'] as String?;
    _suggestions = getDataList(snapshotData['Suggestions']);
    _profileSummary = snapshotData['profile_summary'] as String?;
    _companyName = snapshotData['company_name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('previous_requests');

  static Stream<PreviousRequestsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PreviousRequestsRecord.fromSnapshot(s));

  static Future<PreviousRequestsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => PreviousRequestsRecord.fromSnapshot(s));

  static PreviousRequestsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PreviousRequestsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PreviousRequestsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PreviousRequestsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PreviousRequestsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PreviousRequestsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPreviousRequestsRecordData({
  String? jobTitle,
  String? jobDescription,
  String? jobRequirements,
  DocumentReference? resumeUsed,
  double? resumeScore,
  DateTime? date,
  int? jobUid,
  String? parsedResume,
  String? profileSummary,
  String? companyName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'job_title': jobTitle,
      'job_description': jobDescription,
      'job_requirements': jobRequirements,
      'resume_used': resumeUsed,
      'resume_score': resumeScore,
      'date': date,
      'job_uid': jobUid,
      'parsed_resume': parsedResume,
      'profile_summary': profileSummary,
      'company_name': companyName,
    }.withoutNulls,
  );

  return firestoreData;
}

class PreviousRequestsRecordDocumentEquality
    implements Equality<PreviousRequestsRecord> {
  const PreviousRequestsRecordDocumentEquality();

  @override
  bool equals(PreviousRequestsRecord? e1, PreviousRequestsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.jobTitle == e2?.jobTitle &&
        e1?.jobDescription == e2?.jobDescription &&
        e1?.jobRequirements == e2?.jobRequirements &&
        e1?.resumeUsed == e2?.resumeUsed &&
        e1?.resumeScore == e2?.resumeScore &&
        e1?.date == e2?.date &&
        listEquality.equals(e1?.interviewQuestions, e2?.interviewQuestions) &&
        e1?.jobUid == e2?.jobUid &&
        e1?.parsedResume == e2?.parsedResume &&
        listEquality.equals(e1?.suggestions, e2?.suggestions) &&
        e1?.profileSummary == e2?.profileSummary &&
        e1?.companyName == e2?.companyName;
  }

  @override
  int hash(PreviousRequestsRecord? e) => const ListEquality().hash([
        e?.jobTitle,
        e?.jobDescription,
        e?.jobRequirements,
        e?.resumeUsed,
        e?.resumeScore,
        e?.date,
        e?.interviewQuestions,
        e?.jobUid,
        e?.parsedResume,
        e?.suggestions,
        e?.profileSummary,
        e?.companyName
      ]);

  @override
  bool isValidKey(Object? o) => o is PreviousRequestsRecord;
}
