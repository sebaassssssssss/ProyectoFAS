import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'editar_paciente_widget.dart' show EditarPacienteWidget;
import 'package:flutter/material.dart';

class EditarPacienteModel extends FlutterFlowModel<EditarPacienteWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
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
  // State field(s) for telefonoTextField widget.
  FocusNode? telefonoTextFieldFocusNode;
  TextEditingController? telefonoTextFieldTextController;
  String? Function(BuildContext, String?)?
      telefonoTextFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    motivoConsultaTextFieldFocusNode?.dispose();
    motivoConsultaTextFieldTextController?.dispose();

    frecuenciaSesionesTextFieldFocusNode?.dispose();
    frecuenciaSesionesTextFieldTextController?.dispose();

    medicacionActualTextFieldFocusNode?.dispose();
    medicacionActualTextFieldTextController?.dispose();

    observacionesTextFieldFocusNode?.dispose();
    observacionesTextFieldTextController?.dispose();

    telefonoTextFieldFocusNode?.dispose();
    telefonoTextFieldTextController?.dispose();
  }
}
