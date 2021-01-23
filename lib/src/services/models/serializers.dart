library serializers;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:soundcloud_audio_player/src/services/models/models.dart';

part 'serializers.g.dart';

@SerializersFor([
  AudioFile,
  Tune,
  WaveformResponse,
])
final Serializers serializers = (_$serializers.toBuilder()
      ..addPlugin(StandardJsonPlugin())
      ..addBuilderFactory(
        _specifiedType,
        () => ListBuilder<BuiltList<int>>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(int)]),
        () => ListBuilder<int>(),
      ))
    .build();

final _specifiedType = const FullType(
  BuiltList,
  [
    FullType(BuiltList, [FullType(int)])
  ],
);

T deserialize<T extends Object>(Object value) {
  final serializerFor = serializers.serializerForType(T) as Serializer<T>;
  return serializers.deserializeWith<T>(serializerFor, value);
}

BuiltList<T> deserializeListOf<T extends Object>(Iterable<Object> items) {
  return BuiltList.from(
    items.map((item) => deserialize<T>(item)).toList(
          growable: false,
        ),
  );
}
