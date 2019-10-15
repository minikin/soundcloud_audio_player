library waveform;

import 'dart:convert';
import 'dart:math';

import 'package:audio/src/services/serializers/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';

part 'waveform.g.dart';

abstract class Waveform implements Built<Waveform, WaveformBuilder> {
  static Serializer<Waveform> get serializer => _$waveformSerializer;

  factory Waveform([void Function(WaveformBuilder) updates]) = _$Waveform;

  Waveform._();

  int get bits;

  int get channels;

  @nullable
  BuiltList<int> get data;

  int get length;

  @BuiltValueField(wireName: 'sample_rate')
  int get sampleRate;

  @BuiltValueField(wireName: 'samples_per_pixel')
  int get sampleSize;

  @nullable
  List<double> get scaledData;

  int get version;

  int frameIdxFromPercent(double percent) {
    if (percent == null) {
      return 0;
    }

    // if the scale is 0-1.0
    if (percent < 0) {
      percent = 0;
    } else if (percent > 100) {
      percent = 100;
    }

    if (percent > 0 && percent < 1) {
      return ((data.length.toDouble() / 2) * percent).floor();
    }

    var idx = ((data.length.toDouble() / 2) * (percent / 100)).floor();
    final maxIdx = (data.length.toDouble() / 2 * 0.98).floor();
    if (idx > maxIdx) {
      idx = maxIdx;
    }
    return idx;
  }

  Path path(
    Size size, {
    double zoomLevel = 1,
    int fromFrame = 0,
  }) {
    if (!_isDataScaled()) {
      _scaleData();
    }

    if (zoomLevel == null || zoomLevel < 1) {
      zoomLevel = 1;
    } else if (zoomLevel > 100) {
      zoomLevel = 100;
    }

    if (zoomLevel == 1.0 && fromFrame == 0) {
      return _path(scaledData, size);
    }

    // buffer so we can't start too far in the waveform, 90% max
    if (fromFrame * 2 > (data.length * 0.98).floor()) {
      print('from frame is too far at $fromFrame');
      fromFrame = ((data.length / 2) * 0.98).floor();
    }

    final endFrame = (fromFrame * 2 +
            ((scaledData.length - fromFrame * 2) * (1.0 - (zoomLevel / 100))))
        .floor();
    final list = scaledData;
    return _path(list.sublist(fromFrame * 2, endFrame), size);
  }

  String toJson() {
    return json.encode(serializers.serializeWith(Waveform.serializer, this));
  }

  bool _isDataScaled() {
    return scaledData != null && scaledData.length == data.length;
  }

  Path _path(
    List<double> samples,
    Size size,
  ) {
    final middle = size.height / 2;
    var i = 0;

    final minPoints = [];
    final maxPoints = [];

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
    maxPoints.forEach((o) => path.lineTo(o.dx, o.dy));
    // back to zero
    path.lineTo(size.width, middle);
    // draw the minimums backwards so we can fill the shape when done.
    minPoints.reversed
        .forEach((o) => path.lineTo(o.dx, middle - (middle - o.dy)));

    path.close();
    return path;
  }

  void _scaleData() {
    final max = pow(2, bits - 1).toDouble();
    final dataSize = data.length;
    final preScaledData = List<double>(dataSize);

    for (var i = 0; i < dataSize; i++) {
      preScaledData[i] = data[i].toDouble() / max;

      if (preScaledData[i] > 1) {
        preScaledData[i] = 1;
      }

      if (preScaledData[i] < -1) {
        preScaledData[i] = -1;
      }
    }
    this.rebuild((b) => b.scaledData = preScaledData);
  }

  static Waveform fromJson(String jsonString) {
    return serializers.deserializeWith(
        Waveform.serializer, json.decode(jsonString));
  }

  static Future<Waveform> loadWaveformData(String filename) async {
    final data = await rootBundle.loadString('assets/waveforms/$filename');
    return Waveform.fromJson(data);
  }
}
