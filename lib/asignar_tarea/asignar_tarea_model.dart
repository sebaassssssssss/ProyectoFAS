import '/flutter_flow/flutter_flow_util.dart';
import 'asignar_tarea_widget.dart' show AsignarTareaWidget;
import 'package:flutter/material.dart';

class AsignarTareaModel extends FlutterFlowModel<AsignarTareaWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for tituloTextField widget.
  FocusNode? tituloTextFieldFocusNode;
  TextEditingController? tituloTextFieldTextController;
  String? Function(BuildContext, String?)?
      tituloTextFieldTextControllerValidator;
  // State field(s) for descripcionTextField widget.
  FocusNode? descripcionTextFieldFocusNode;
  TextEditingController? descripcionTextFieldTextController;
  String? Function(BuildContext, String?)?
      descripcionTextFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tituloTextFieldFocusNode?.dispose();
    tituloTextFieldTextController?.dispose();

    descripcionTextFieldFocusNode?.dispose();
    descripcionTextFieldTextController?.dispose();
  }
}
