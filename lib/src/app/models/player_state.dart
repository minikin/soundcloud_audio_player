library player_state;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'player_state.g.dart';

class PlayerState extends EnumClass {
  static const PlayerState playing = _$playing;
  static const PlayerState paused = _$paused;
  static const PlayerState stopped = _$stopped;
  static const PlayerState resumed = _$resumed;

  static Serializer<PlayerState> get serializer => _$playerStateSerializer;
  static BuiltSet<PlayerState> get values => _$playerStateValues;
  const PlayerState._(String name) : super(name);

  String render() {
    switch (this) {
      case playing:
        return 'Playing';
      case paused:
        return 'Paused';
      case stopped:
        return 'Stopped';
      case resumed:
        return 'Resumed';
      default:
        return 'Unknown';
    }
  }

  static PlayerState valueOf(String name) => _$playerStateValueOf(name);
}
