import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CitasRecord extends FirestoreRecord {
  CitasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "psicologo_uid" field.
  DocumentReference? _psicologoUid;
  DocumentReference? get psicologoUid => _psicologoUid;
  bool hasPsicologoUid() => _psicologoUid != null;

  // "paciente_ref" field.
  DocumentReference? _pacienteRef;
  DocumentReference? get pacienteRef => _pacienteRef;
  bool hasPacienteRef() => _pacienteRef != null;

  // "fechaHora" field.
  DateTime? _fechaHora;
  DateTime? get fechaHora => _fechaHora;
  bool hasFechaHora() => _fechaHora != null;

  // "motivoCita" field.
  String? _motivoCita;
  String get motivoCita => _motivoCita ?? '';
  bool hasMotivoCita() => _motivoCita != null;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  bool hasEstado() => _estado != null;

  // "nombrePaciente" field.
  String? _nombrePaciente;
  String get nombrePaciente => _nombrePaciente ?? '';
  bool hasNombrePaciente() => _nombrePaciente != null;

  // "apellidosPaciente" field.
  String? _apellidosPaciente;
  String get apellidosPaciente => _apellidosPaciente ?? '';
  bool hasApellidosPaciente() => _apellidosPaciente != null;

  void _initializeFields() {
    _psicologoUid = snapshotData['psicologo_uid'] as DocumentReference?;
    _pacienteRef = snapshotData['paciente_ref'] as DocumentReference?;
    _fechaHora = snapshotData['fechaHora'] as DateTime?;
    _motivoCita = snapshotData['motivoCita'] as String?;
    _estado = snapshotData['estado'] as String?;
    _nombrePaciente = snapshotData['nombrePaciente'] as String?;
    _apellidosPaciente = snapshotData['apellidosPaciente'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Citas');

  static Stream<CitasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CitasRecord.fromSnapshot(s));

  static Future<CitasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CitasRecord.fromSnapshot(s));

  static CitasRecord fromSnapshot(DocumentSnapshot snapshot) => CitasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CitasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CitasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CitasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CitasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCitasRecordData({
  DocumentReference? psicologoUid,
  DocumentReference? pacienteRef,
  DateTime? fechaHora,
  String? motivoCita,
  String? estado,
  String? nombrePaciente,
  String? apellidosPaciente,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'psicologo_uid': psicologoUid,
      'paciente_ref': pacienteRef,
      'fechaHora': fechaHora,
      'motivoCita': motivoCita,
      'estado': estado,
      'nombrePaciente': nombrePaciente,
      'apellidosPaciente': apellidosPaciente,
    }.withoutNulls,
  );

  return firestoreData;
}

class CitasRecordDocumentEquality implements Equality<CitasRecord> {
  const CitasRecordDocumentEquality();

  @override
  bool equals(CitasRecord? e1, CitasRecord? e2) {
    return e1?.psicologoUid == e2?.psicologoUid &&
        e1?.pacienteRef == e2?.pacienteRef &&
        e1?.fechaHora == e2?.fechaHora &&
        e1?.motivoCita == e2?.motivoCita &&
        e1?.estado == e2?.estado &&
        e1?.nombrePaciente == e2?.nombrePaciente &&
        e1?.apellidosPaciente == e2?.apellidosPaciente;
  }

  @override
  int hash(CitasRecord? e) => const ListEquality().hash([
        e?.psicologoUid,
        e?.pacienteRef,
        e?.fechaHora,
        e?.motivoCita,
        e?.estado,
        e?.nombrePaciente,
        e?.apellidosPaciente
      ]);

  @override
  bool isValidKey(Object? o) => o is CitasRecord;
}
