import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HistorialClinicoRecord extends FirestoreRecord {
  HistorialClinicoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombreArchivo" field.
  String? _nombreArchivo;
  String get nombreArchivo => _nombreArchivo ?? '';
  bool hasNombreArchivo() => _nombreArchivo != null;

  // "urlArchivo" field.
  String? _urlArchivo;
  String get urlArchivo => _urlArchivo ?? '';
  bool hasUrlArchivo() => _urlArchivo != null;

  // "fechaSubida" field.
  DateTime? _fechaSubida;
  DateTime? get fechaSubida => _fechaSubida;
  bool hasFechaSubida() => _fechaSubida != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _nombreArchivo = snapshotData['nombreArchivo'] as String?;
    _urlArchivo = snapshotData['urlArchivo'] as String?;
    _fechaSubida = snapshotData['fechaSubida'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('historialClinico')
          : FirebaseFirestore.instance.collectionGroup('historialClinico');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('historialClinico').doc(id);

  static Stream<HistorialClinicoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HistorialClinicoRecord.fromSnapshot(s));

  static Future<HistorialClinicoRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => HistorialClinicoRecord.fromSnapshot(s));

  static HistorialClinicoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HistorialClinicoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HistorialClinicoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HistorialClinicoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HistorialClinicoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HistorialClinicoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHistorialClinicoRecordData({
  String? nombreArchivo,
  String? urlArchivo,
  DateTime? fechaSubida,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombreArchivo': nombreArchivo,
      'urlArchivo': urlArchivo,
      'fechaSubida': fechaSubida,
    }.withoutNulls,
  );

  return firestoreData;
}

class HistorialClinicoRecordDocumentEquality
    implements Equality<HistorialClinicoRecord> {
  const HistorialClinicoRecordDocumentEquality();

  @override
  bool equals(HistorialClinicoRecord? e1, HistorialClinicoRecord? e2) {
    return e1?.nombreArchivo == e2?.nombreArchivo &&
        e1?.urlArchivo == e2?.urlArchivo &&
        e1?.fechaSubida == e2?.fechaSubida;
  }

  @override
  int hash(HistorialClinicoRecord? e) => const ListEquality()
      .hash([e?.nombreArchivo, e?.urlArchivo, e?.fechaSubida]);

  @override
  bool isValidKey(Object? o) => o is HistorialClinicoRecord;
}
