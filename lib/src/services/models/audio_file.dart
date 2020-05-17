library audio_file;

import 'dart:convert';

import 'package:audio/src/services/models/models.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'audio_file.g.dart';

abstract class AudioFile implements Built<AudioFile, AudioFileBuilder> {
  static Serializer<AudioFile> get serializer => _$audioFileSerializer;

  factory AudioFile([void Function(AudioFileBuilder) updates]) = _$AudioFile;

  AudioFile._();

  String get id;

  String get name;

  String get audioUrl;

  int get duration;

  WaveformResponse get waveformResponse;

  String toJson() {
    return json.encode(serializers.serializeWith(AudioFile.serializer, this));
  }

  static AudioFile fromJson(String jsonString) {
    return serializers.deserializeWith(
        AudioFile.serializer, json.decode(jsonString));
  }
}
