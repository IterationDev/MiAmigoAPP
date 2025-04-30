// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_tts/flutter_tts.dart';

Future textToVoice(
  String? texto,
  String? lang,
) async {
  if (texto == null || texto.isEmpty) {
    return;
  }

  FlutterTts flutterTts = FlutterTts();

  //verificamos que no este vacio el lenguaje
  if (lang != null && lang.isNotEmpty) {
    flutterTts.setLanguage(lang);
  } else {
    //si esta vacio lo configuramos en Español Mexico "es-MX"
    flutterTts.setLanguage("es-MX");
  }

  String text = texto;
  await flutterTts.speak(text);
}
