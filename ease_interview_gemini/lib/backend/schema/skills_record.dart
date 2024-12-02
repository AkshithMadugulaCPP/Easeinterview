import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SkillsRecord extends FirestoreRecord {
  SkillsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "skill" field.
  List<String>? _skill;
  List<String> get skill => _skill ?? const [];
  bool hasSkill() => _skill != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _skill = getDataList(snapshotData['skill']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('skills')
          : FirebaseFirestore.instance.collectionGroup('skills');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('skills').doc(id);

  static Stream<SkillsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SkillsRecord.fromSnapshot(s));

  static Future<SkillsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SkillsRecord.fromSnapshot(s));

  static SkillsRecord fromSnapshot(DocumentSnapshot snapshot) => SkillsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SkillsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SkillsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SkillsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SkillsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSkillsRecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}

class SkillsRecordDocumentEquality implements Equality<SkillsRecord> {
  const SkillsRecordDocumentEquality();

  @override
  bool equals(SkillsRecord? e1, SkillsRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.skill, e2?.skill);
  }

  @override
  int hash(SkillsRecord? e) => const ListEquality().hash([e?.skill]);

  @override
  bool isValidKey(Object? o) => o is SkillsRecord;
}
