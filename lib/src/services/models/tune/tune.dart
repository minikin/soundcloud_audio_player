// ignore_for_file: omit_local_variable_types

library tune;

import 'dart:convert';

import 'package:audio/src/services/models/models.dart';
import 'package:audio/src/services/utils/utils.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter/foundation.dart';

part 'tune.g.dart';

abstract class Tune implements Built<Tune, TuneBuilder> {
  static Serializer<Tune> get serializer => _$tuneSerializer;

  factory Tune([void Function(TuneBuilder) updates]) = _$Tune;

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

  static Future<Tune> fromJsonItem(String jsonString) async {
    return compute(Tune.fromJson, jsonString);
  }

  static Future<BuiltList<Tune>> loadListOfTunes(String fileName) async {
    final responseBody = await loadLocalJson(fileName: fileName);
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return deserializeListOf<Tune>(parsed);
  }
}
