import 'dart:async';

import 'package:audio/src/services/audio_player_service.dart';
import 'package:audio/src/services/bloc/bloc.dart';
import 'package:audio/src/services/models/models.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

class PlayerBloc extends Bloc<PlayerEvent, PlayerState> {
  final AudioPlayerService _audioPlayerService;

  PlayerBloc({
    @required AudioPlayerService audioPlayerService,
  })  : assert(audioPlayerService != null),
        _audioPlayerService = audioPlayerService;

  @override
  PlayerState get initialState => PlayerState.stopped();

  @override
  Stream<PlayerState> mapEventToState(PlayerEvent event) async* {
    if (event is Pause) {
      yield* _pauseTune(event);
    } else if (event is PlayEvent) {
      yield* _playTune(event);
    } else if (event is Resume) {
      yield* _resumeTune(event);
    } else if (event is Stop) {
      yield* _stopTune(event);
    }
  }

  void toggle(Tune tune) {
    if (state == PlayerState.stopped()) {
      this.add(PlayEvent((b) => b..tune.replace(tune)));
    } else if (state == PlayerState.playing(0)) {
      this.add(Pause((b) => b));
    } else if (state == PlayerState.paused()) {
      this.add(Resume((b) => b));
    } else if (state == PlayerState.resumed()) {
      this.add(Pause((b) => b));
    }
  }

  Stream<PlayerState> _pauseTune(Pause event) async* {
    _audioPlayerService.pauseAudio();
    yield PlayerState.paused();
  }

  Stream<PlayerState> _playTune(PlayEvent event) async* {
    _audioPlayerService.playAudio();
    _audioPlayerService.onProgress().listen(
        (p) => add(TrackPosition((b) => b..position = p.inMilliseconds)));
    yield PlayerState.playing(0);
  }

  Stream<PlayerState> _resumeTune(Resume event) async* {
    _audioPlayerService.resumeAudio();
    yield PlayerState.resumed();
  }

  Stream<PlayerState> _stopTune(Stop event) async* {
    _audioPlayerService.stopAudio();
    yield PlayerState.stopped();
  }

  Stream<PlayerState> _positionDidUpdated(TrackPosition event) async* {
    yield event.position > 0
        ? PlayerState.playing(event.position)
        : PlayerState.paused();
  }
}
