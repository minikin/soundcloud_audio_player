library player_event;

import 'package:audio/src/services/models/models.dart';
import 'package:built_value/built_value.dart';

part 'player_event.g.dart';

abstract class PlayerEvent {}

abstract class Pause extends PlayerEvent implements Built<Pause, PauseBuilder> {
  factory Pause([void Function(PauseBuilder) updates]) = _$Pause;

  Pause._();
}

abstract class PlayEvent extends PlayerEvent
    implements Built<PlayEvent, PlayEventBuilder> {
  PlayEvent._();

  Tune get tune;

  @BuiltValueField(compare: true)
  int get position;

  factory PlayEvent([void Function(PlayEventBuilder) updates]) = _$PlayEvent;
}

abstract class Resume extends PlayerEvent
    implements Built<Resume, ResumeBuilder> {
  factory Resume([updates(ResumeBuilder b)]) = _$Resume;

  Resume._();
}

abstract class Stop extends PlayerEvent implements Built<Stop, StopBuilder> {
  factory Stop([void Function(StopBuilder) updates]) = _$Stop;

  Stop._();
}

// abstract class TrackPosition extends PlayerEvent
//     implements Built<TrackPosition, TrackPositionBuilder> {
//   int get position;

//   TrackPosition._();

//   factory TrackPosition([updates(TrackPositionBuilder b)]) = _$TrackPosition;
// }
