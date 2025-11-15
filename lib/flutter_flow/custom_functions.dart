import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/supabase/supabase.dart';
import '/auth/firebase_auth/auth_util.dart';

bool validateCurp(String curp) {
// Limpiar la entrada: evitar recibir valores nulos y quitar espacios
  if (curp == null || curp.isEmpty) {
    return false;
  }
  final String curpLimpia = curp.trim();

  // Regexp para validar la CURP
  // final RegExp curpRegex = RegExp(
  //  r'^[A-Z]{4}\d{6}[HM](AS|BC|BS|CC|CS|CH|CL|CM|DF|DG|GT|GR|HG|JC|MC|MN|MS|NE|NL|OC|PL|QR|QT|SP|SL|SR|TC|TL|TS|VZ|YN|ZS)[B-DF-HJ-NP-TV-Z]{3}[0-9A-Z]{2}$',
  //     caseSensitive: false);
  final RegExp curpRegex = RegExp(
      r'^[A-Z]{4}\d{6}[HM](AS|BC|BS|CC|CS|CH|CL|CM|DF|DG|GT|GR|HG|JC|MC|MN|MS|NE|NL|OC|PL|QR|QT|SP|SL|SR|TC|TL|TS|VZ|YN|ZS)[B-DF-HJ-NP-TV-Z]{3}[0-9A-Z]{2}$',
      caseSensitive: false);

  // Verificar la longitud con el string de CURP limpio
  if (curpLimpia.length != 18) {
    return false;
  }

  // Verificar si coincide con la regexp
  return curpRegex.hasMatch(curpLimpia);
}
