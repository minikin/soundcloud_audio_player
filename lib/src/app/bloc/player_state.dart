library player_state;

import 'package:built_value/built_value.dart';

part 'player_state.g.dart';

abstract class PlayerState implements Built<PlayerState, PlayerStateBuilder> {
  factory PlayerState([void Function(PlayerStateBuilder) updates]) =
      _$PlayerState;

  factory PlayerState.paused(int position) {
    return PlayerState(
      (b) => b
        ..isPlaying = false
        ..isPaused = true
        ..isStopped = false
        ..isResumed = false
        ..position = position,
    );
  }

  factory PlayerState.playing(int position) {
    return PlayerState(
      (b) => b
        ..isPlaying = true
        ..isPaused = false
        ..isStopped = false
        ..isResumed = false
        ..position = position,
    );
  }

  factory PlayerState.resumed(int position) {
    return PlayerState(
      (b) => b
        ..isPlaying = true
        ..isPaused = false
        ..isStopped = false
        ..isResumed = true
        ..position = position,
    );
  }

  factory PlayerState.stopped() {
    return PlayerState(
      (b) => b
        ..isPlaying = false
        ..isPaused = false
        ..isStopped = true
        ..isResumed = false
        ..position = 0,
    );
  }

  PlayerState._();

  bool get isPaused;

  bool get isPlaying;

  bool get isResumed;

  bool get isStopped;

  int get position;

  bool get paused => !isPlaying && isPaused;

  bool get stopped => isStopped && (position == 0);
}
