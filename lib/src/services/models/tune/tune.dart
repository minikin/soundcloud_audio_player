library tune;

import 'dart:convert';

import 'package:audio/src/services/models/models.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tune.g.dart';

abstract class Tune implements Built<Tune, TuneBuilder> {
  static Serializer<Tune> get serializer => _$tuneSerializer;
  factory Tune([updates(TuneBuilder b)]) = _$Tune;
  Tune._();
  String get artist;
  String get artwork;

  AudioFile get audioFile;

  String get id;

  String get title;

  String toJson() {
    return json.encode(serializers.serializeWith(Tune.serializer, this));
  }

  static Tune fromJson(String jsonString) {
    return serializers.deserializeWith(
        Tune.serializer, json.decode(jsonString));
  }
}
