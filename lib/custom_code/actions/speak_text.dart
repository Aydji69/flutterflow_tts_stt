// lib/custom_code/actions/speak_text.dart

import 'package:flutter_tts/flutter_tts.dart';

final FlutterTts flutterTts = FlutterTts();

Future<void> speakText(String text) async {
  await flutterTts.setLanguage("en-US"); // "fr-FR", "ar-SA" as needed
  await flutterTts.setPitch(1.0);
  await flutterTts.speak(text);
}
