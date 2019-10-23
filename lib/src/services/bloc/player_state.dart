library player_state;

import 'package:built_value/built_value.dart';

part 'player_state.g.dart';

abstract class PlayerState implements Built<PlayerState, PlayerStateBuilder> {
  bool get isPlaying;
  bool get isPaused;
  bool get isStopped;
  bool get isResumed;

  PlayerState._();

  factory PlayerState([updates(PlayerStateBuilder b)]) = _$PlayerState;

  factory PlayerState.playing() {
    return PlayerState(
      (b) => b
        ..isPlaying = true
        ..isPaused = false
        ..isStopped = false
        ..isResumed = false,
    );
  }

  factory PlayerState.paused() {
    return PlayerState(
      (b) => b
        ..isPlaying = false
        ..isPaused = true
        ..isStopped = false
        ..isResumed = false,
    );
  }

  factory PlayerState.stopped() {
    return PlayerState(
      (b) => b
        ..isPlaying = false
        ..isPaused = false
        ..isStopped = true
        ..isResumed = false,
    );
  }

  factory PlayerState.resumed() {
    return PlayerState(
      (b) => b
        ..isPlaying = true
        ..isPaused = false
        ..isStopped = false
        ..isResumed = true,
    );
  }
}
