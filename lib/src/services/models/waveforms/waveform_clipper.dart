import 'package:audio/src/services/models/models.dart';
import 'package:flutter/rendering.dart';

class WaveformClipper extends CustomClipper<Path> {
  WaveformClipper(this.data);

  final Waveform data;

  @override
  Path getClip(Size size) {
    return data.path(size);
  }

  @override
  bool shouldReclip(WaveformClipper oldClipper) {
    if (data != oldClipper.data) {
      return true;
    }
    return false;
  }
}
