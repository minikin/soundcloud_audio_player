import 'package:soundcloud_audio_player/src/services/models/models.dart';

abstract class PlayerEvent {}

class PauseEvent extends PlayerEvent {}

class PlayEvent extends PlayerEvent {
  final Tune tune;

  PlayEvent(this.tune);
}

class TickEvent extends PlayerEvent {
  final int position;
  TickEvent({this.position = 0});
}

class ResumeEvent extends PlayerEvent {}

class SeekEvent extends PlayerEvent {
  final int seekToPosition;

  SeekEvent({required this.seekToPosition});
}

class StopEvent extends PlayerEvent {}
