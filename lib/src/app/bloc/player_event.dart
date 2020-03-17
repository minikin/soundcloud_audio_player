library player_event;

import 'package:audio/src/services/models/models.dart';
import 'package:built_value/built_value.dart';

part 'player_event.g.dart';

abstract class PauseEvent extends PlayerEvent
    implements Built<PauseEvent, PauseEventBuilder> {
  factory PauseEvent([void Function(PauseEventBuilder) updates]) = _$PauseEvent;

  PauseEvent._();
}

abstract class PlayerEvent {}

abstract class PlayEvent extends PlayerEvent
    implements Built<PlayEvent, PlayEventBuilder> {
  factory PlayEvent([void Function(PlayEventBuilder) updates]) = _$PlayEvent;

  PlayEvent._();

  Tune get tune;
}

abstract class ResumeEvent extends PlayerEvent
    implements Built<ResumeEvent, ResumeEventBuilder> {
  factory ResumeEvent([void Function(ResumeEventBuilder) updates]) =
      _$ResumeEvent;

  ResumeEvent._();
}

class SeekEvent extends PlayerEvent {
  final int seekToPosition;

  SeekEvent({this.seekToPosition});
}

abstract class StopEvent extends PlayerEvent
    implements Built<StopEvent, StopEventBuilder> {
  factory StopEvent([void Function(StopEventBuilder) updates]) = _$StopEvent;

  StopEvent._();
}

class TickEvent extends PlayerEvent {
  final int position;
  TickEvent({this.position = 0});
}
