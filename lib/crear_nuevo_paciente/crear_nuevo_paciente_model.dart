import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'crear_nuevo_paciente_widget.dart' show CrearNuevoPacienteWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CrearNuevoPacienteModel
    extends FlutterFlowModel<CrearNuevoPacienteWidget> {
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
  // State field(s) for emailTextField widget.
  FocusNode? emailTextFieldFocusNode;
  TextEditingController? emailTextFieldTextController;
  String? Function(BuildContext, String?)?
      emailTextFieldTextControllerValidator;
  // State field(s) for telefonoTextField widget.
  FocusNode? telefonoTextFieldFocusNode;
  TextEditingController? telefonoTextFieldTextController;
  late MaskTextInputFormatter telefonoTextFieldMask;
  String? Function(BuildContext, String?)?
      telefonoTextFieldTextControllerValidator;
  // State field(s) for expedienteTextField widget.
  FocusNode? expedienteTextFieldFocusNode;
  TextEditingController? expedienteTextFieldTextController;
  String? Function(BuildContext, String?)?
      expedienteTextFieldTextControllerValidator;
  // State field(s) for motivoConsultaTextField widget.
  FocusNode? motivoConsultaTextFieldFocusNode;
  TextEditingController? motivoConsultaTextFieldTextController;
  String? Function(BuildContext, String?)?
      motivoConsultaTextFieldTextControllerValidator;
  // State field(s) for frecuenciaSesionesTextField widget.
  FocusNode? frecuenciaSesionesTextFieldFocusNode;
  TextEditingController? frecuenciaSesionesTextFieldTextController;
  String? Function(BuildContext, String?)?
      frecuenciaSesionesTextFieldTextControllerValidator;
  // State field(s) for medicacionActualTextField widget.
  FocusNode? medicacionActualTextFieldFocusNode;
  TextEditingController? medicacionActualTextFieldTextController;
  String? Function(BuildContext, String?)?
      medicacionActualTextFieldTextControllerValidator;
  // State field(s) for observacionesTextField widget.
  FocusNode? observacionesTextFieldFocusNode;
  TextEditingController? observacionesTextFieldTextController;
  String? Function(BuildContext, String?)?
      observacionesTextFieldTextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  PacientesRecord? nuevoPacienteRegistrado;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nombreTextFieldFocusNode?.dispose();
    nombreTextFieldTextController?.dispose();

    apellidosTextFieldFocusNode?.dispose();
    apellidosTextFieldTextController?.dispose();

    emailTextFieldFocusNode?.dispose();
    emailTextFieldTextController?.dispose();

    telefonoTextFieldFocusNode?.dispose();
    telefonoTextFieldTextController?.dispose();

    expedienteTextFieldFocusNode?.dispose();
    expedienteTextFieldTextController?.dispose();

    motivoConsultaTextFieldFocusNode?.dispose();
    motivoConsultaTextFieldTextController?.dispose();

    frecuenciaSesionesTextFieldFocusNode?.dispose();
    frecuenciaSesionesTextFieldTextController?.dispose();

    medicacionActualTextFieldFocusNode?.dispose();
    medicacionActualTextFieldTextController?.dispose();

    observacionesTextFieldFocusNode?.dispose();
    observacionesTextFieldTextController?.dispose();
  }
}
