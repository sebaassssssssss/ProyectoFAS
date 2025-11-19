import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PacientesRecord extends FirestoreRecord {
  PacientesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "ExpPsicologo" field.
  DocumentReference? _expPsicologo;
  DocumentReference? get expPsicologo => _expPsicologo;
  bool hasExpPsicologo() => _expPsicologo != null;

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "email_invitado" field.
  String? _emailInvitado;
  String get emailInvitado => _emailInvitado ?? '';
  bool hasEmailInvitado() => _emailInvitado != null;

  // "user_uid_link" field.
  String? _userUidLink;
  String get userUidLink => _userUidLink ?? '';
  bool hasUserUidLink() => _userUidLink != null;

  // "psicologo_uid" field.
  DocumentReference? _psicologoUid;
  DocumentReference? get psicologoUid => _psicologoUid;
  bool hasPsicologoUid() => _psicologoUid != null;

  // "foto_url" field.
  String? _fotoUrl;
  String get fotoUrl => _fotoUrl ?? '';
  bool hasFotoUrl() => _fotoUrl != null;

  // "fecha_registro" field.
  DateTime? _fechaRegistro;
  DateTime? get fechaRegistro => _fechaRegistro;
  bool hasFechaRegistro() => _fechaRegistro != null;

  // "rol" field.
  String? _rol;
  String get rol => _rol ?? '';
  bool hasRol() => _rol != null;

  // "expedientePaciente" field.
  String? _expedientePaciente;
  String get expedientePaciente => _expedientePaciente ?? '';
  bool hasExpedientePaciente() => _expedientePaciente != null;

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "apellidos" field.
  String? _apellidos;
  String get apellidos => _apellidos ?? '';
  bool hasApellidos() => _apellidos != null;

  // "telefono" field.
  String? _telefono;
  String get telefono => _telefono ?? '';
  bool hasTelefono() => _telefono != null;

  // "motivoConsulta" field.
  String? _motivoConsulta;
  String get motivoConsulta => _motivoConsulta ?? '';
  bool hasMotivoConsulta() => _motivoConsulta != null;

  // "frecuenciaSesiones" field.
  int? _frecuenciaSesiones;

  /// Entero que muestra la cantidad de sesiones por mes, asignada por el
  /// psicólogo.
  int get frecuenciaSesiones => _frecuenciaSesiones ?? 0;
  bool hasFrecuenciaSesiones() => _frecuenciaSesiones != null;

  // "medicacionActual" field.
  String? _medicacionActual;
  String get medicacionActual => _medicacionActual ?? '';
  bool hasMedicacionActual() => _medicacionActual != null;

  // "observaciones" field.
  String? _observaciones;
  String get observaciones => _observaciones ?? '';
  bool hasObservaciones() => _observaciones != null;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  bool hasEstado() => _estado != null;

  // "nivelAnsiedad" field.
  double? _nivelAnsiedad;
  double get nivelAnsiedad => _nivelAnsiedad ?? 0.0;
  bool hasNivelAnsiedad() => _nivelAnsiedad != null;

  // "nivelEstres" field.
  double? _nivelEstres;
  double get nivelEstres => _nivelEstres ?? 0.0;
  bool hasNivelEstres() => _nivelEstres != null;

  // "nivelDepresion" field.
  double? _nivelDepresion;
  double get nivelDepresion => _nivelDepresion ?? 0.0;
  bool hasNivelDepresion() => _nivelDepresion != null;

  // "historialClinicoPdf" field.
  List<String>? _historialClinicoPdf;
  List<String> get historialClinicoPdf => _historialClinicoPdf ?? const [];
  bool hasHistorialClinicoPdf() => _historialClinicoPdf != null;

  void _initializeFields() {
    _expPsicologo = snapshotData['ExpPsicologo'] as DocumentReference?;
    _userRef = snapshotData['user_ref'] as DocumentReference?;
    _emailInvitado = snapshotData['email_invitado'] as String?;
    _userUidLink = snapshotData['user_uid_link'] as String?;
    _psicologoUid = snapshotData['psicologo_uid'] as DocumentReference?;
    _fotoUrl = snapshotData['foto_url'] as String?;
    _fechaRegistro = snapshotData['fecha_registro'] as DateTime?;
    _rol = snapshotData['rol'] as String?;
    _expedientePaciente = snapshotData['expedientePaciente'] as String?;
    _nombre = snapshotData['nombre'] as String?;
    _apellidos = snapshotData['apellidos'] as String?;
    _telefono = snapshotData['telefono'] as String?;
    _motivoConsulta = snapshotData['motivoConsulta'] as String?;
    _frecuenciaSesiones = castToType<int>(snapshotData['frecuenciaSesiones']);
    _medicacionActual = snapshotData['medicacionActual'] as String?;
    _observaciones = snapshotData['observaciones'] as String?;
    _estado = snapshotData['estado'] as String?;
    _nivelAnsiedad = castToType<double>(snapshotData['nivelAnsiedad']);
    _nivelEstres = castToType<double>(snapshotData['nivelEstres']);
    _nivelDepresion = castToType<double>(snapshotData['nivelDepresion']);
    _historialClinicoPdf = getDataList(snapshotData['historialClinicoPdf']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Pacientes');

  static Stream<PacientesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PacientesRecord.fromSnapshot(s));

  static Future<PacientesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PacientesRecord.fromSnapshot(s));

  static PacientesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PacientesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PacientesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PacientesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PacientesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PacientesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPacientesRecordData({
  DocumentReference? expPsicologo,
  DocumentReference? userRef,
  String? emailInvitado,
  String? userUidLink,
  DocumentReference? psicologoUid,
  String? fotoUrl,
  DateTime? fechaRegistro,
  String? rol,
  String? expedientePaciente,
  String? nombre,
  String? apellidos,
  String? telefono,
  String? motivoConsulta,
  int? frecuenciaSesiones,
  String? medicacionActual,
  String? observaciones,
  String? estado,
  double? nivelAnsiedad,
  double? nivelEstres,
  double? nivelDepresion,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ExpPsicologo': expPsicologo,
      'user_ref': userRef,
      'email_invitado': emailInvitado,
      'user_uid_link': userUidLink,
      'psicologo_uid': psicologoUid,
      'foto_url': fotoUrl,
      'fecha_registro': fechaRegistro,
      'rol': rol,
      'expedientePaciente': expedientePaciente,
      'nombre': nombre,
      'apellidos': apellidos,
      'telefono': telefono,
      'motivoConsulta': motivoConsulta,
      'frecuenciaSesiones': frecuenciaSesiones,
      'medicacionActual': medicacionActual,
      'observaciones': observaciones,
      'estado': estado,
      'nivelAnsiedad': nivelAnsiedad,
      'nivelEstres': nivelEstres,
      'nivelDepresion': nivelDepresion,
    }.withoutNulls,
  );

  return firestoreData;
}

class PacientesRecordDocumentEquality implements Equality<PacientesRecord> {
  const PacientesRecordDocumentEquality();

  @override
  bool equals(PacientesRecord? e1, PacientesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.expPsicologo == e2?.expPsicologo &&
        e1?.userRef == e2?.userRef &&
        e1?.emailInvitado == e2?.emailInvitado &&
        e1?.userUidLink == e2?.userUidLink &&
        e1?.psicologoUid == e2?.psicologoUid &&
        e1?.fotoUrl == e2?.fotoUrl &&
        e1?.fechaRegistro == e2?.fechaRegistro &&
        e1?.rol == e2?.rol &&
        e1?.expedientePaciente == e2?.expedientePaciente &&
        e1?.nombre == e2?.nombre &&
        e1?.apellidos == e2?.apellidos &&
        e1?.telefono == e2?.telefono &&
        e1?.motivoConsulta == e2?.motivoConsulta &&
        e1?.frecuenciaSesiones == e2?.frecuenciaSesiones &&
        e1?.medicacionActual == e2?.medicacionActual &&
        e1?.observaciones == e2?.observaciones &&
        e1?.estado == e2?.estado &&
        e1?.nivelAnsiedad == e2?.nivelAnsiedad &&
        e1?.nivelEstres == e2?.nivelEstres &&
        e1?.nivelDepresion == e2?.nivelDepresion &&
        listEquality.equals(e1?.historialClinicoPdf, e2?.historialClinicoPdf);
  }

  @override
  int hash(PacientesRecord? e) => const ListEquality().hash([
        e?.expPsicologo,
        e?.userRef,
        e?.emailInvitado,
        e?.userUidLink,
        e?.psicologoUid,
        e?.fotoUrl,
        e?.fechaRegistro,
        e?.rol,
        e?.expedientePaciente,
        e?.nombre,
        e?.apellidos,
        e?.telefono,
        e?.motivoConsulta,
        e?.frecuenciaSesiones,
        e?.medicacionActual,
        e?.observaciones,
        e?.estado,
        e?.nivelAnsiedad,
        e?.nivelEstres,
        e?.nivelDepresion,
        e?.historialClinicoPdf
      ]);

  @override
  bool isValidKey(Object? o) => o is PacientesRecord;
}
