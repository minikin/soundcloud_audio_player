import 'package:flutter/rendering.dart';
import 'package:soundcloud_audio_player/src/services/models/models.dart';

class WaveformClipper extends CustomClipper<Path> {
  final Waveform waveform;

  const WaveformClipper(this.waveform);

  @override
  Path getClip(Size size) => waveform.path(size);

  @override
  bool shouldReclip(WaveformClipper oldClipper) {
    if (waveform != oldClipper.waveform) {
      return true;
    }
    return false;
  }
}
