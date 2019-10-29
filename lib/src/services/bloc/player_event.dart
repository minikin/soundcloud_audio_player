library player_event;

import 'package:audio/src/services/models/models.dart';
import 'package:built_value/built_value.dart';

part 'player_event.g.dart';

abstract class PlayerEvent {}

abstract class PauseEvent extends PlayerEvent
    implements Built<PauseEvent, PauseEventBuilder> {
  PauseEvent._();

  factory PauseEvent([updates(PauseEventBuilder b)]) = _$PauseEvent;
}

abstract class PlayEvent extends PlayerEvent
    implements Built<PlayEvent, PlayEventBuilder> {
  Tune get tune;

  PlayEvent._();

  factory PlayEvent([updates(PlayEventBuilder b)]) = _$PlayEvent;
}

abstract class ResumeEvent extends PlayerEvent
    implements Built<ResumeEvent, ResumeEventBuilder> {
  ResumeEvent._();

  factory ResumeEvent([updates(ResumeEventBuilder b)]) = _$ResumeEvent;
}

abstract class StopEvent extends PlayerEvent
    implements Built<StopEvent, StopEventBuilder> {
  StopEvent._();

  factory StopEvent([updates(StopEventBuilder b)]) = _$StopEvent;
}

class Tick extends PlayerEvent {
  final int position;
  Tick({this.position = 0});
}
