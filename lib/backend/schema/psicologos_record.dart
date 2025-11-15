import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PsicologosRecord extends FirestoreRecord {
  PsicologosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "apellidos" field.
  String? _apellidos;
  String get apellidos => _apellidos ?? '';
  bool hasApellidos() => _apellidos != null;

  // "curp" field.
  String? _curp;
  String get curp => _curp ?? '';
  bool hasCurp() => _curp != null;

  // "telefono" field.
  String? _telefono;
  String get telefono => _telefono ?? '';
  bool hasTelefono() => _telefono != null;

  // "direccionConsultorio" field.
  String? _direccionConsultorio;
  String get direccionConsultorio => _direccionConsultorio ?? '';
  bool hasDireccionConsultorio() => _direccionConsultorio != null;

  // "especialidad" field.
  String? _especialidad;
  String get especialidad => _especialidad ?? '';
  bool hasEspecialidad() => _especialidad != null;

  // "experienciaProfesional" field.
  String? _experienciaProfesional;
  String get experienciaProfesional => _experienciaProfesional ?? '';
  bool hasExperienciaProfesional() => _experienciaProfesional != null;

  // "cedulaProfesional" field.
  String? _cedulaProfesional;
  String get cedulaProfesional => _cedulaProfesional ?? '';
  bool hasCedulaProfesional() => _cedulaProfesional != null;

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "documentoIdentificacion" field.
  String? _documentoIdentificacion;
  String get documentoIdentificacion => _documentoIdentificacion ?? '';
  bool hasDocumentoIdentificacion() => _documentoIdentificacion != null;

  // "estatusVerificacionPerfil" field.
  String? _estatusVerificacionPerfil;
  String get estatusVerificacionPerfil => _estatusVerificacionPerfil ?? '';
  bool hasEstatusVerificacionPerfil() => _estatusVerificacionPerfil != null;

  // "idPsicologo" field.
  int? _idPsicologo;
  int get idPsicologo => _idPsicologo ?? 0;
  bool hasIdPsicologo() => _idPsicologo != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _apellidos = snapshotData['apellidos'] as String?;
    _curp = snapshotData['curp'] as String?;
    _telefono = snapshotData['telefono'] as String?;
    _direccionConsultorio = snapshotData['direccionConsultorio'] as String?;
    _especialidad = snapshotData['especialidad'] as String?;
    _experienciaProfesional = snapshotData['experienciaProfesional'] as String?;
    _cedulaProfesional = snapshotData['cedulaProfesional'] as String?;
    _userRef = snapshotData['user_ref'] as DocumentReference?;
    _documentoIdentificacion =
        snapshotData['documentoIdentificacion'] as String?;
    _estatusVerificacionPerfil =
        snapshotData['estatusVerificacionPerfil'] as String?;
    _idPsicologo = castToType<int>(snapshotData['idPsicologo']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Psicologos');

  static Stream<PsicologosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PsicologosRecord.fromSnapshot(s));

  static Future<PsicologosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PsicologosRecord.fromSnapshot(s));

  static PsicologosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PsicologosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PsicologosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PsicologosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PsicologosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PsicologosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPsicologosRecordData({
  String? nombre,
  String? apellidos,
  String? curp,
  String? telefono,
  String? direccionConsultorio,
  String? especialidad,
  String? experienciaProfesional,
  String? cedulaProfesional,
  DocumentReference? userRef,
  String? documentoIdentificacion,
  String? estatusVerificacionPerfil,
  int? idPsicologo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'apellidos': apellidos,
      'curp': curp,
      'telefono': telefono,
      'direccionConsultorio': direccionConsultorio,
      'especialidad': especialidad,
      'experienciaProfesional': experienciaProfesional,
      'cedulaProfesional': cedulaProfesional,
      'user_ref': userRef,
      'documentoIdentificacion': documentoIdentificacion,
      'estatusVerificacionPerfil': estatusVerificacionPerfil,
      'idPsicologo': idPsicologo,
    }.withoutNulls,
  );

  return firestoreData;
}

class PsicologosRecordDocumentEquality implements Equality<PsicologosRecord> {
  const PsicologosRecordDocumentEquality();

  @override
  bool equals(PsicologosRecord? e1, PsicologosRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.apellidos == e2?.apellidos &&
        e1?.curp == e2?.curp &&
        e1?.telefono == e2?.telefono &&
        e1?.direccionConsultorio == e2?.direccionConsultorio &&
        e1?.especialidad == e2?.especialidad &&
        e1?.experienciaProfesional == e2?.experienciaProfesional &&
        e1?.cedulaProfesional == e2?.cedulaProfesional &&
        e1?.userRef == e2?.userRef &&
        e1?.documentoIdentificacion == e2?.documentoIdentificacion &&
        e1?.estatusVerificacionPerfil == e2?.estatusVerificacionPerfil &&
        e1?.idPsicologo == e2?.idPsicologo;
  }

  @override
  int hash(PsicologosRecord? e) => const ListEquality().hash([
        e?.nombre,
        e?.apellidos,
        e?.curp,
        e?.telefono,
        e?.direccionConsultorio,
        e?.especialidad,
        e?.experienciaProfesional,
        e?.cedulaProfesional,
        e?.userRef,
        e?.documentoIdentificacion,
        e?.estatusVerificacionPerfil,
        e?.idPsicologo
      ]);

  @override
  bool isValidKey(Object? o) => o is PsicologosRecord;
}
