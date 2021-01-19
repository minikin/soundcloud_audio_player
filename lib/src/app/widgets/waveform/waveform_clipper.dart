import 'package:flutter/rendering.dart';
import 'package:soundcloud_audio_player/src/services/models/models.dart';

class WaveformClipper extends CustomClipper<Path> {
  final Waveform data;

  const WaveformClipper(this.data);

  @override
  Path getClip(Size size) => data.path(size);

  @override
  bool shouldReclip(WaveformClipper oldClipper) {
    if (data != oldClipper.data) {
      return true;
    }
    return false;
  }
}
