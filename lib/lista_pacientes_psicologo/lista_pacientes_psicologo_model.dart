import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'lista_pacientes_psicologo_widget.dart'
    show ListaPacientesPsicologoWidget;
import 'package:flutter/material.dart';

class ListaPacientesPsicologoModel
    extends FlutterFlowModel<ListaPacientesPsicologoWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
