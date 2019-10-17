library serializers;

import 'package:audio/src/services/models/waveform_response.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

part 'serializers.g.dart';

@SerializersFor([
  WaveformResponse,
])
final Serializers serializers = (_$serializers.toBuilder()
      ..addPlugin(StandardJsonPlugin())
      ..addBuilderFactory(_specifiedType, () => ListBuilder<BuiltList<int>>())
      ..addBuilderFactory(
          const FullType(BuiltList, [FullType(int)]), () => ListBuilder<int>()))
    .build();

T deserialize<T>(dynamic value) =>
    serializers.deserializeWith<T>(serializers.serializerForType(T), value);

BuiltList<T> deserializeListOf<T>(dynamic items) => BuiltList.from(
    items.map((item) => deserialize<T>(item)).toList(growable: false));

final _specifiedType = const FullType(BuiltList, [
  FullType(BuiltList, [FullType(int)])
]);
