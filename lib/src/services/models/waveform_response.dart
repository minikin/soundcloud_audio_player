// ignore_for_file: omit_local_variable_types
library waveform_response;

import 'dart:convert';

import 'package:audio/src/services/serializers/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter/services.dart';

part 'waveform_response.g.dart';

abstract class WaveformResponse
    implements Built<WaveformResponse, WaveformResponseBuilder> {
  static Serializer<WaveformResponse> get serializer =>
      _$waveformResponseSerializer;

  factory WaveformResponse([updates(WaveformResponseBuilder b)]) =
      _$WaveformResponse;

  WaveformResponse._();

  int get bits;

  int get channels;

  BuiltList<int> get data;

  int get length;

  @BuiltValueField(wireName: 'sample_rate')
  int get sampleRate;

  @BuiltValueField(wireName: 'samples_per_pixel')
  int get sampleSize;

  int get version;

  String toJson() {
    return json
        .encode(serializers.serializeWith(WaveformResponse.serializer, this));
  }

  static WaveformResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        WaveformResponse.serializer, json.decode(jsonString));
  }

  static Future<WaveformResponse> loadWaveformDataItem(String filename) async {
    final data = await rootBundle.loadString('assets/waveforms/$filename');
    return WaveformResponse.fromJson(data);
  }

  static Future<List<WaveformResponse>> loadWaveformDataList(
      List<String> fileList) async {
    final List<WaveformResponse> waveformList = [];

    for (final fileName in fileList) {
      final item = await loadWaveformDataItem(fileName);
      waveformList.add(item);
    }

    return waveformList;
  }
}
