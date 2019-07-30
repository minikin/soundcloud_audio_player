import 'package:audio/src/services/models/waveform.dart';
import 'package:flutter/services.dart';

Future<Waveform> loadWaveformData(String filename) async {
  final data = await rootBundle.loadString("assets/waveforms/$filename");
  return Waveform.fromJson(data);
}
