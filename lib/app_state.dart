import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _Paciente = false;
  bool get Paciente => _Paciente;
  set Paciente(bool value) {
    _Paciente = value;
  }

  String _rolseleccionado = '';
  String get rolseleccionado => _rolseleccionado;
  set rolseleccionado(String value) {
    _rolseleccionado = value;
  }
}
