library serializers;

import 'package:audio/src/services/models/models.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

part 'serializers.g.dart';

@SerializersFor([
  AudioFile,
  Tune,
  WaveformResponse,
])
final Serializers serializers = (_$serializers.toBuilder()
      ..addPlugin(StandardJsonPlugin())
      ..addBuilderFactory(_specifiedType, () => ListBuilder<BuiltList<int>>())
      ..addBuilderFactory(
          const FullType(BuiltList, [FullType(int)]), () => ListBuilder<int>()))
    .build();

final _specifiedType = const FullType(BuiltList, [
  FullType(BuiltList, [FullType(int)])
]);

T deserialize<T>(dynamic value) =>
    serializers.deserializeWith<T>(serializers.serializerForType(T), value);

BuiltList<T> deserializeListOf<T>(dynamic items) => BuiltList.from(
    items.map((dynamic item) => deserialize<T>(item)).toList(growable: false));
