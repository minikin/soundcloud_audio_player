import 'dart:math';

import 'package:flutter/rendering.dart';
import 'package:soundcloud_audio_player/src/services/models/models.dart';

class Waveform {
  final WaveformResponse waveformResponse;

  const Waveform(this.waveformResponse);

  Path path(Size size, {int fromFrame = 0}) {
    final waveformData = _computeWaveformData();

    if (fromFrame * 2 > (waveformResponse.data.length * 0.98).floor()) {
      fromFrame = ((waveformResponse.data.length / 2) * 0.98).floor();
    }

    final endFrame =
        (fromFrame * 2 + (waveformData.length - fromFrame * 2)).floor();

    return _path(waveformData.sublist(fromFrame * 2, endFrame), size);
  }

  List<double> _computeWaveformData() {
    final max = pow(2, waveformResponse.bits - 1).toDouble();
    final dataSize = waveformResponse.data.length;
    final waveformData = List<double>.filled(dataSize, 0);

    for (var i = 0; i < dataSize; i++) {
      waveformData[i] = waveformResponse.data[i].toDouble() / max;
      if (waveformData[i] > 1) {
        waveformData[i] = 1;
      }
      if (waveformData[i] < -1) {
        waveformData[i] = -1;
      }
    }

    return waveformData;
  }

  Path _path(List<double> samples, Size size) {
    final middle = size.height / 2;
    var i = 0;

    final minPoints = <Offset>[];
    final maxPoints = <Offset>[];

    final t = size.width / samples.length;

    for (var j = 0; j < samples.length; j++) {
      final d = samples[j];

      if (j % 2 != 0) {
        minPoints.add(Offset(t * i, middle - middle * d));
      } else {
        maxPoints.add(Offset(t * i, middle - middle * d));
      }
      i++;
    }

    final path = Path();
    path.moveTo(0, middle);
    maxPoints.forEach((point) => path.lineTo(point.dx, point.dy));
    path.lineTo(size.width, middle);
    minPoints.reversed.forEach(
      (point) => path.lineTo(point.dx, middle - (middle - point.dy)),
    );
    path.close();
    return path;
  }
}
