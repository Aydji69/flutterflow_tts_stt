// lib/custom_code/actions/record_voice.dart

import 'package:speech_to_text/speech_to_text.dart' as stt;

stt.SpeechToText _speech = stt.SpeechToText();

Future<String> recordVoice() async {
  bool available = await _speech.initialize();

  if (!available) {
    return "Speech recognition unavailable";
  }

  await _speech.listen();
  await Future.delayed(Duration(seconds: 5)); // Listen for 5 seconds
  _speech.stop();

  return _speech.lastRecognizedWords;
}
