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

class PsicologosRecordDocumentEquality implements Equality<PsicologosRecord> {
  const PsicologosRecordDocumentEquality();

  @override
  bool equals(PsicologosRecord? e1, PsicologosRecord? e2) {
    return e1?.expediente == e2?.expediente &&
        e1?.nombreUsuario == e2?.nombreUsuario &&
        e1?.password == e2?.password &&
        e1?.rol == e2?.rol;
  }

  @override
  int hash(PsicologosRecord? e) => const ListEquality()
      .hash([e?.expediente, e?.nombreUsuario, e?.password, e?.rol]);

  @override
  bool isValidKey(Object? o) => o is PsicologosRecord;
}
