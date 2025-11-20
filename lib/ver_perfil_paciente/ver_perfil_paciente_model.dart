import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'ver_perfil_paciente_widget.dart' show VerPerfilPacienteWidget;
import 'package:flutter/material.dart';

class VerPerfilPacienteModel extends FlutterFlowModel<VerPerfilPacienteWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading_docHistorialClinico = false;
  FFUploadedFile uploadedLocalFile_docHistorialClinico =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_docHistorialClinico = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
