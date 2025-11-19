import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'crear_cita_widget.dart' show CrearCitaWidget;
import 'package:flutter/material.dart';

class CrearCitaModel extends FlutterFlowModel<CrearCitaWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  DateTime? datePicked;
  // State field(s) for motivoConsultaTextField widget.
  FocusNode? motivoConsultaTextFieldFocusNode;
  TextEditingController? motivoConsultaTextFieldTextController;
  String? Function(BuildContext, String?)?
      motivoConsultaTextFieldTextControllerValidator;
  // State field(s) for estadoCitaDropDown widget.
  String? estadoCitaDropDownValue;
  FormFieldController<String>? estadoCitaDropDownValueController;
  // Stores action output result for [Backend Call - Read Document] action in Button widget.
  PacientesRecord? pacienteData;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    motivoConsultaTextFieldFocusNode?.dispose();
    motivoConsultaTextFieldTextController?.dispose();
  }
}
