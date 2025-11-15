import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'registro_psicologo_widget.dart' show RegistroPsicologoWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class RegistroPsicologoModel extends FlutterFlowModel<RegistroPsicologoWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for nombreTextField widget.
  FocusNode? nombreTextFieldFocusNode;
  TextEditingController? nombreTextFieldTextController;
  String? Function(BuildContext, String?)?
      nombreTextFieldTextControllerValidator;
  // State field(s) for apellidosTextField widget.
  FocusNode? apellidosTextFieldFocusNode;
  TextEditingController? apellidosTextFieldTextController;
  String? Function(BuildContext, String?)?
      apellidosTextFieldTextControllerValidator;
  // State field(s) for CURPTextField widget.
  FocusNode? cURPTextFieldFocusNode;
  TextEditingController? cURPTextFieldTextController;
  String? Function(BuildContext, String?)? cURPTextFieldTextControllerValidator;
  // State field(s) for telefonoTextField widget.
  FocusNode? telefonoTextFieldFocusNode;
  TextEditingController? telefonoTextFieldTextController;
  late MaskTextInputFormatter telefonoTextFieldMask;
  String? Function(BuildContext, String?)?
      telefonoTextFieldTextControllerValidator;
  // State field(s) for direccionTextField widget.
  FocusNode? direccionTextFieldFocusNode;
  TextEditingController? direccionTextFieldTextController;
  String? Function(BuildContext, String?)?
      direccionTextFieldTextControllerValidator;
  // State field(s) for especialidadTextField widget.
  FocusNode? especialidadTextFieldFocusNode;
  TextEditingController? especialidadTextFieldTextController;
  String? Function(BuildContext, String?)?
      especialidadTextFieldTextControllerValidator;
  // State field(s) for experienciaTextField widget.
  FocusNode? experienciaTextFieldFocusNode;
  TextEditingController? experienciaTextFieldTextController;
  String? Function(BuildContext, String?)?
      experienciaTextFieldTextControllerValidator;
  // State field(s) for cedulaProfesionalTextField widget.
  FocusNode? cedulaProfesionalTextFieldFocusNode;
  TextEditingController? cedulaProfesionalTextFieldTextController;
  String? Function(BuildContext, String?)?
      cedulaProfesionalTextFieldTextControllerValidator;
  bool isDataUploading_docValidacion = false;
  FFUploadedFile uploadedLocalFile_docValidacion =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_docValidacion = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nombreTextFieldFocusNode?.dispose();
    nombreTextFieldTextController?.dispose();

    apellidosTextFieldFocusNode?.dispose();
    apellidosTextFieldTextController?.dispose();

    cURPTextFieldFocusNode?.dispose();
    cURPTextFieldTextController?.dispose();

    telefonoTextFieldFocusNode?.dispose();
    telefonoTextFieldTextController?.dispose();

    direccionTextFieldFocusNode?.dispose();
    direccionTextFieldTextController?.dispose();

    especialidadTextFieldFocusNode?.dispose();
    especialidadTextFieldTextController?.dispose();

    experienciaTextFieldFocusNode?.dispose();
    experienciaTextFieldTextController?.dispose();

    cedulaProfesionalTextFieldFocusNode?.dispose();
    cedulaProfesionalTextFieldTextController?.dispose();
  }
}
