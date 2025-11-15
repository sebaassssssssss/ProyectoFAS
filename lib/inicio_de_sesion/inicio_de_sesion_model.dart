import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'inicio_de_sesion_widget.dart' show InicioDeSesionWidget;
import 'package:flutter/material.dart';

class InicioDeSesionModel extends FlutterFlowModel<InicioDeSesionWidget> {
  ///  Local state fields for this page.

  String selectedRol = 'paciente';

  String usernameInput = '\"\"';

  String passwordInput = '\"\"';

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  // State field(s) for TextField1 widget.
  FocusNode? textField1FocusNode;
  TextEditingController? textField1TextController;
  String? Function(BuildContext, String?)? textField1TextControllerValidator;
  // State field(s) for TextField2 widget.
  FocusNode? textField2FocusNode;
  TextEditingController? textField2TextController;
  late bool textField2Visibility;
  String? Function(BuildContext, String?)? textField2TextControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  PacientesRecord? verifyUser;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  PsicologosRecord? verifyUserPass;

  @override
  void initState(BuildContext context) {
    textField2Visibility = false;
  }

  @override
  void dispose() {
    textField1FocusNode?.dispose();
    textField1TextController?.dispose();

    textField2FocusNode?.dispose();
    textField2TextController?.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
