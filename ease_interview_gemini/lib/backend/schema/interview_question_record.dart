import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InterviewQuestionRecord extends FirestoreRecord {
  InterviewQuestionRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "questionno" field.
  int? _questionno;
  int get questionno => _questionno ?? 0;
  bool hasQuestionno() => _questionno != null;

  // "question" field.
  String? _question;
  String get question => _question ?? '';
  bool hasQuestion() => _question != null;

  // "hint" field.
  String? _hint;
  String get hint => _hint ?? '';
  bool hasHint() => _hint != null;

  void _initializeFields() {
    _questionno = castToType<int>(snapshotData['questionno']);
    _question = snapshotData['question'] as String?;
    _hint = snapshotData['hint'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('InterviewQuestion');

  static Stream<InterviewQuestionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InterviewQuestionRecord.fromSnapshot(s));

  static Future<InterviewQuestionRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => InterviewQuestionRecord.fromSnapshot(s));

  static InterviewQuestionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      InterviewQuestionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InterviewQuestionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InterviewQuestionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InterviewQuestionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InterviewQuestionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInterviewQuestionRecordData({
  int? questionno,
  String? question,
  String? hint,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'questionno': questionno,
      'question': question,
      'hint': hint,
    }.withoutNulls,
  );

  return firestoreData;
}

class InterviewQuestionRecordDocumentEquality
    implements Equality<InterviewQuestionRecord> {
  const InterviewQuestionRecordDocumentEquality();

  @override
  bool equals(InterviewQuestionRecord? e1, InterviewQuestionRecord? e2) {
    return e1?.questionno == e2?.questionno &&
        e1?.question == e2?.question &&
        e1?.hint == e2?.hint;
  }

  @override
  int hash(InterviewQuestionRecord? e) =>
      const ListEquality().hash([e?.questionno, e?.question, e?.hint]);

  @override
  bool isValidKey(Object? o) => o is InterviewQuestionRecord;
}
