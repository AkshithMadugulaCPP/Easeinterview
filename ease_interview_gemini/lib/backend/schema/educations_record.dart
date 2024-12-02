import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EducationsRecord extends FirestoreRecord {
  EducationsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "university_name" field.
  String? _universityName;
  String get universityName => _universityName ?? '';
  bool hasUniversityName() => _universityName != null;

  // "degree_level" field.
  String? _degreeLevel;
  String get degreeLevel => _degreeLevel ?? '';
  bool hasDegreeLevel() => _degreeLevel != null;

  // "major" field.
  String? _major;
  String get major => _major ?? '';
  bool hasMajor() => _major != null;

  // "gpa" field.
  double? _gpa;
  double get gpa => _gpa ?? 0.0;
  bool hasGpa() => _gpa != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _universityName = snapshotData['university_name'] as String?;
    _degreeLevel = snapshotData['degree_level'] as String?;
    _major = snapshotData['major'] as String?;
    _gpa = castToType<double>(snapshotData['gpa']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Educations')
          : FirebaseFirestore.instance.collectionGroup('Educations');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('Educations').doc(id);

  static Stream<EducationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EducationsRecord.fromSnapshot(s));

  static Future<EducationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EducationsRecord.fromSnapshot(s));

  static EducationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EducationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EducationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EducationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EducationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EducationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEducationsRecordData({
  String? universityName,
  String? degreeLevel,
  String? major,
  double? gpa,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'university_name': universityName,
      'degree_level': degreeLevel,
      'major': major,
      'gpa': gpa,
    }.withoutNulls,
  );

  return firestoreData;
}

class EducationsRecordDocumentEquality implements Equality<EducationsRecord> {
  const EducationsRecordDocumentEquality();

  @override
  bool equals(EducationsRecord? e1, EducationsRecord? e2) {
    return e1?.universityName == e2?.universityName &&
        e1?.degreeLevel == e2?.degreeLevel &&
        e1?.major == e2?.major &&
        e1?.gpa == e2?.gpa;
  }

  @override
  int hash(EducationsRecord? e) => const ListEquality()
      .hash([e?.universityName, e?.degreeLevel, e?.major, e?.gpa]);

  @override
  bool isValidKey(Object? o) => o is EducationsRecord;
}
