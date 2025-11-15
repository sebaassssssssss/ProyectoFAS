import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TareasRecord extends FirestoreRecord {
  TareasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  bool hasTitulo() => _titulo != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "paciente_ref" field.
  DocumentReference? _pacienteRef;
  DocumentReference? get pacienteRef => _pacienteRef;
  bool hasPacienteRef() => _pacienteRef != null;

  // "psicologo_ref" field.
  DocumentReference? _psicologoRef;
  DocumentReference? get psicologoRef => _psicologoRef;
  bool hasPsicologoRef() => _psicologoRef != null;

  // "fechaAsignacion" field.
  DateTime? _fechaAsignacion;
  DateTime? get fechaAsignacion => _fechaAsignacion;
  bool hasFechaAsignacion() => _fechaAsignacion != null;

  void _initializeFields() {
    _titulo = snapshotData['titulo'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _pacienteRef = snapshotData['paciente_ref'] as DocumentReference?;
    _psicologoRef = snapshotData['psicologo_ref'] as DocumentReference?;
    _fechaAsignacion = snapshotData['fechaAsignacion'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Tareas');

  static Stream<TareasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TareasRecord.fromSnapshot(s));

  static Future<TareasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TareasRecord.fromSnapshot(s));

  static TareasRecord fromSnapshot(DocumentSnapshot snapshot) => TareasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TareasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TareasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TareasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TareasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTareasRecordData({
  String? titulo,
  String? descripcion,
  DocumentReference? pacienteRef,
  DocumentReference? psicologoRef,
  DateTime? fechaAsignacion,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'titulo': titulo,
      'descripcion': descripcion,
      'paciente_ref': pacienteRef,
      'psicologo_ref': psicologoRef,
      'fechaAsignacion': fechaAsignacion,
    }.withoutNulls,
  );

  return firestoreData;
}

class TareasRecordDocumentEquality implements Equality<TareasRecord> {
  const TareasRecordDocumentEquality();

  @override
  bool equals(TareasRecord? e1, TareasRecord? e2) {
    return e1?.titulo == e2?.titulo &&
        e1?.descripcion == e2?.descripcion &&
        e1?.pacienteRef == e2?.pacienteRef &&
        e1?.psicologoRef == e2?.psicologoRef &&
        e1?.fechaAsignacion == e2?.fechaAsignacion;
  }

  @override
  int hash(TareasRecord? e) => const ListEquality().hash([
        e?.titulo,
        e?.descripcion,
        e?.pacienteRef,
        e?.psicologoRef,
        e?.fechaAsignacion
      ]);

  @override
  bool isValidKey(Object? o) => o is TareasRecord;
}
