// GENERATED CODE - DO NOT MODIFY BY HAND

part of player_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PlayerState _$playing = const PlayerState._('playing');
const PlayerState _$paused = const PlayerState._('paused');
const PlayerState _$stopped = const PlayerState._('stopped');
const PlayerState _$resumed = const PlayerState._('resumed');

PlayerState _$playerStateValueOf(String name) {
  switch (name) {
    case 'playing':
      return _$playing;
    case 'paused':
      return _$paused;
    case 'stopped':
      return _$stopped;
    case 'resumed':
      return _$resumed;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<PlayerState> _$playerStateValues =
    new BuiltSet<PlayerState>(const <PlayerState>[
  _$playing,
  _$paused,
  _$stopped,
  _$resumed,
]);

Serializer<PlayerState> _$playerStateSerializer = new _$PlayerStateSerializer();

class _$PlayerStateSerializer implements PrimitiveSerializer<PlayerState> {
  @override
  final Iterable<Type> types = const <Type>[PlayerState];
  @override
  final String wireName = 'PlayerState';

  @override
  Object serialize(Serializers serializers, PlayerState object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  PlayerState deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PlayerState.valueOf(serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
