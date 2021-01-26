library waveform_response;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:soundcloud_audio_player/src/services/models/models.dart';

part 'waveform_response.g.dart';

abstract class WaveformResponse
    implements Built<WaveformResponse, WaveformResponseBuilder> {
  static Serializer<WaveformResponse> get serializer =>
      _$waveformResponseSerializer;

  factory WaveformResponse([void Function(WaveformResponseBuilder) updates]) =
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
    return json.encode(
      serializers.serializeWith(
        WaveformResponse.serializer,
        this,
      ),
    );
  }

  static WaveformResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
      WaveformResponse.serializer,
      json.decode(jsonString),
    );
  }
}
