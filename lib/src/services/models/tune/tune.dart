library tune;

import 'dart:convert';

import 'package:audio/src/services/models/models.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tune.g.dart';

abstract class Tune implements Built<Tune, TuneBuilder> {
  String get artist;
  String get title;
  String get artwork;
  AudioFile get audioFile;

  Tune._();

  factory Tune([updates(TuneBuilder b)]) = _$Tune;

  String toJson() {
    return json.encode(serializers.serializeWith(Tune.serializer, this));
  }

  static Tune fromJson(String jsonString) {
    return serializers.deserializeWith(
        Tune.serializer, json.decode(jsonString));
  }

  static Serializer<Tune> get serializer => _$tuneSerializer;
}
