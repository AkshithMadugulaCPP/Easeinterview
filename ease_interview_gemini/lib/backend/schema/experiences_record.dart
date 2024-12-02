import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ExperiencesRecord extends FirestoreRecord {
  ExperiencesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "start_date" field.
  DateTime? _startDate;
  DateTime? get startDate => _startDate;
  bool hasStartDate() => _startDate != null;

  // "end_date" field.
  DateTime? _endDate;
  DateTime? get endDate => _endDate;
  bool hasEndDate() => _endDate != null;

  // "company_name" field.
  String? _companyName;
  String get companyName => _companyName ?? '';
  bool hasCompanyName() => _companyName != null;

  // "designation" field.
  String? _designation;
  String get designation => _designation ?? '';
  bool hasDesignation() => _designation != null;

  // "roles_and_responsibilities" field.
  List<String>? _rolesAndResponsibilities;
  List<String> get rolesAndResponsibilities =>
      _rolesAndResponsibilities ?? const [];
  bool hasRolesAndResponsibilities() => _rolesAndResponsibilities != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _startDate = snapshotData['start_date'] as DateTime?;
    _endDate = snapshotData['end_date'] as DateTime?;
    _companyName = snapshotData['company_name'] as String?;
    _designation = snapshotData['designation'] as String?;
    _rolesAndResponsibilities =
        getDataList(snapshotData['roles_and_responsibilities']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Experiences')
          : FirebaseFirestore.instance.collectionGroup('Experiences');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('Experiences').doc(id);

  static Stream<ExperiencesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ExperiencesRecord.fromSnapshot(s));

  static Future<ExperiencesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ExperiencesRecord.fromSnapshot(s));

  static ExperiencesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ExperiencesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ExperiencesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ExperiencesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ExperiencesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ExperiencesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createExperiencesRecordData({
  DateTime? startDate,
  DateTime? endDate,
  String? companyName,
  String? designation,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'start_date': startDate,
      'end_date': endDate,
      'company_name': companyName,
      'designation': designation,
    }.withoutNulls,
  );

  return firestoreData;
}

class ExperiencesRecordDocumentEquality implements Equality<ExperiencesRecord> {
  const ExperiencesRecordDocumentEquality();

  @override
  bool equals(ExperiencesRecord? e1, ExperiencesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.startDate == e2?.startDate &&
        e1?.endDate == e2?.endDate &&
        e1?.companyName == e2?.companyName &&
        e1?.designation == e2?.designation &&
        listEquality.equals(
            e1?.rolesAndResponsibilities, e2?.rolesAndResponsibilities);
  }

  @override
  int hash(ExperiencesRecord? e) => const ListEquality().hash([
        e?.startDate,
        e?.endDate,
        e?.companyName,
        e?.designation,
        e?.rolesAndResponsibilities
      ]);

  @override
  bool isValidKey(Object? o) => o is ExperiencesRecord;
}
