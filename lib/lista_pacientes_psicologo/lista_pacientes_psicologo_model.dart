import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'lista_pacientes_psicologo_widget.dart'
    show ListaPacientesPsicologoWidget;
import 'package:flutter/material.dart';

class ListaPacientesPsicologoModel
    extends FlutterFlowModel<ListaPacientesPsicologoWidget> {
  ///  Local state fields for this page.

  List<PacientesRecord> listaPacientesMostrada = [];
  void addToListaPacientesMostrada(PacientesRecord item) =>
      listaPacientesMostrada.add(item);
  void removeFromListaPacientesMostrada(PacientesRecord item) =>
      listaPacientesMostrada.remove(item);
  void removeAtIndexFromListaPacientesMostrada(int index) =>
      listaPacientesMostrada.removeAt(index);
  void insertAtIndexInListaPacientesMostrada(int index, PacientesRecord item) =>
      listaPacientesMostrada.insert(index, item);
  void updateListaPacientesMostradaAtIndex(
          int index, Function(PacientesRecord) updateFn) =>
      listaPacientesMostrada[index] = updateFn(listaPacientesMostrada[index]);

  List<PacientesRecord> listaCompletaPacientes = [];
  void addToListaCompletaPacientes(PacientesRecord item) =>
      listaCompletaPacientes.add(item);
  void removeFromListaCompletaPacientes(PacientesRecord item) =>
      listaCompletaPacientes.remove(item);
  void removeAtIndexFromListaCompletaPacientes(int index) =>
      listaCompletaPacientes.removeAt(index);
  void insertAtIndexInListaCompletaPacientes(int index, PacientesRecord item) =>
      listaCompletaPacientes.insert(index, item);
  void updateListaCompletaPacientesAtIndex(
          int index, Function(PacientesRecord) updateFn) =>
      listaCompletaPacientes[index] = updateFn(listaCompletaPacientes[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in listaPacientesPsicologo widget.
  List<PacientesRecord>? misPacientesBD;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<PacientesRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
