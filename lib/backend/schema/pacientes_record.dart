import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PacientesRecord extends FirestoreRecord {
  PacientesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Expediente" field.
  int? _expediente;
  int get expediente => _expediente ?? 0;
  bool hasExpediente() => _expediente != null;

  // "Nombre_Usuario" field.
  String? _nombreUsuario;
  String get nombreUsuario => _nombreUsuario ?? '';
  bool hasNombreUsuario() => _nombreUsuario != null;

  // "Password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  // "Rol" field.
  String? _rol;
  String get rol => _rol ?? '';
  bool hasRol() => _rol != null;

  void _initializeFields() {
    _expediente = castToType<int>(snapshotData['Expediente']);
    _nombreUsuario = snapshotData['Nombre_Usuario'] as String?;
    _password = snapshotData['Password'] as String?;
    _rol = snapshotData['Rol'] as String?;
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
  int? expediente,
  String? nombreUsuario,
  String? password,
  String? rol,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Expediente': expediente,
      'Nombre_Usuario': nombreUsuario,
      'Password': password,
      'Rol': rol,
    }.withoutNulls,
  );

  return firestoreData;
}

class PacientesRecordDocumentEquality implements Equality<PacientesRecord> {
  const PacientesRecordDocumentEquality();

  @override
  bool equals(PacientesRecord? e1, PacientesRecord? e2) {
    return e1?.expediente == e2?.expediente &&
        e1?.nombreUsuario == e2?.nombreUsuario &&
        e1?.password == e2?.password &&
        e1?.rol == e2?.rol;
  }

  @override
  int hash(PacientesRecord? e) => const ListEquality()
      .hash([e?.expediente, e?.nombreUsuario, e?.password, e?.rol]);

  @override
  bool isValidKey(Object? o) => o is PacientesRecord;
}
