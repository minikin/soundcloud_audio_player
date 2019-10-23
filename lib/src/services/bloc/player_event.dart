library player_event;

import 'package:audio/src/services/models/models.dart';
import 'package:built_value/built_value.dart';

part 'player_event.g.dart';

abstract class PlayerEvent {}

abstract class Pause extends PlayerEvent implements Built<Pause, PauseBuilder> {
  factory Pause([updates(PauseBuilder b)]) = _$Pause;

  Pause._();

  Tune get tune;
}

abstract class Play extends PlayerEvent implements Built<Play, PlayBuilder> {
  factory Play([updates(PlayBuilder b)]) = _$Play;

  Play._();

  Tune get tune;
}

abstract class Resume extends PlayerEvent
    implements Built<Resume, ResumeBuilder> {
  factory Resume([updates(ResumeBuilder b)]) = _$Resume;

  Resume._();

  Tune get tune;
}

abstract class Stop extends PlayerEvent implements Built<Stop, StopBuilder> {
  factory Stop([updates(StopBuilder b)]) = _$Stop;

  Stop._();

  Tune get tune;
}
