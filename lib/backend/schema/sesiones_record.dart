import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SesionesRecord extends FirestoreRecord {
  SesionesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "paciente_ref" field.
  DocumentReference? _pacienteRef;
  DocumentReference? get pacienteRef => _pacienteRef;
  bool hasPacienteRef() => _pacienteRef != null;

  // "psicologo_ref" field.
  DocumentReference? _psicologoRef;
  DocumentReference? get psicologoRef => _psicologoRef;
  bool hasPsicologoRef() => _psicologoRef != null;

  // "fechaHora" field.
  DateTime? _fechaHora;
  DateTime? get fechaHora => _fechaHora;
  bool hasFechaHora() => _fechaHora != null;

  // "tipoSesion" field.
  String? _tipoSesion;
  String get tipoSesion => _tipoSesion ?? '';
  bool hasTipoSesion() => _tipoSesion != null;

  // "observacionesPsicologo" field.
  String? _observacionesPsicologo;
  String get observacionesPsicologo => _observacionesPsicologo ?? '';
  bool hasObservacionesPsicologo() => _observacionesPsicologo != null;

  void _initializeFields() {
    _pacienteRef = snapshotData['paciente_ref'] as DocumentReference?;
    _psicologoRef = snapshotData['psicologo_ref'] as DocumentReference?;
    _fechaHora = snapshotData['fechaHora'] as DateTime?;
    _tipoSesion = snapshotData['tipoSesion'] as String?;
    _observacionesPsicologo = snapshotData['observacionesPsicologo'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Sesiones');

  static Stream<SesionesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SesionesRecord.fromSnapshot(s));

  static Future<SesionesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SesionesRecord.fromSnapshot(s));

  static SesionesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SesionesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SesionesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SesionesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SesionesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SesionesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSesionesRecordData({
  DocumentReference? pacienteRef,
  DocumentReference? psicologoRef,
  DateTime? fechaHora,
  String? tipoSesion,
  String? observacionesPsicologo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'paciente_ref': pacienteRef,
      'psicologo_ref': psicologoRef,
      'fechaHora': fechaHora,
      'tipoSesion': tipoSesion,
      'observacionesPsicologo': observacionesPsicologo,
    }.withoutNulls,
  );

  return firestoreData;
}

class SesionesRecordDocumentEquality implements Equality<SesionesRecord> {
  const SesionesRecordDocumentEquality();

  @override
  bool equals(SesionesRecord? e1, SesionesRecord? e2) {
    return e1?.pacienteRef == e2?.pacienteRef &&
        e1?.psicologoRef == e2?.psicologoRef &&
        e1?.fechaHora == e2?.fechaHora &&
        e1?.tipoSesion == e2?.tipoSesion &&
        e1?.observacionesPsicologo == e2?.observacionesPsicologo;
  }

  @override
  int hash(SesionesRecord? e) => const ListEquality().hash([
        e?.pacienteRef,
        e?.psicologoRef,
        e?.fechaHora,
        e?.tipoSesion,
        e?.observacionesPsicologo
      ]);

  @override
  bool isValidKey(Object? o) => o is SesionesRecord;
}
