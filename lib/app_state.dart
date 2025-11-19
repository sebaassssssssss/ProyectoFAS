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

  String _urlTemporalIdentificacion = '';
  String get urlTemporalIdentificacion => _urlTemporalIdentificacion;
  set urlTemporalIdentificacion(String value) {
    _urlTemporalIdentificacion = value;
  }

  String _searchPatientTerm = '';
  String get searchPatientTerm => _searchPatientTerm;
  set searchPatientTerm(String value) {
    _searchPatientTerm = value;
  }

  DateTime? _agendaStartDate;
  DateTime? get agendaStartDate => _agendaStartDate;
  set agendaStartDate(DateTime? value) {
    _agendaStartDate = value;
  }

  DateTime? _agendaEndDate;
  DateTime? get agendaEndDate => _agendaEndDate;
  set agendaEndDate(DateTime? value) {
    _agendaEndDate = value;
  }

  String _searchQueryPacientes = '';
  String get searchQueryPacientes => _searchQueryPacientes;
  set searchQueryPacientes(String value) {
    _searchQueryPacientes = value;
  }
}
