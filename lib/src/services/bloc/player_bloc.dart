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
      yield* _pauseTune(event.tune);
    } else if (event is Play) {
      yield* _playTune(event.tune);
    } else if (event is Resume) {
      yield* _resumeTune(event.tune);
    } else if (event is Stop) {
      yield* _stopTune(event.tune);
    }
  }

  Stream<PlayerState> _playTune(Tune tune) async* {
    _audioPlayerService.playAudio();
    yield PlayerState.playing();
  }

  Stream<PlayerState> _pauseTune(Tune tune) async* {
    _audioPlayerService.pauseAudio();
    yield PlayerState.paused();
  }

  Stream<PlayerState> _resumeTune(Tune tune) async* {
    _audioPlayerService.resumeAudio();
    yield PlayerState.resumed();
  }

  Stream<PlayerState> _stopTune(Tune tune) async* {
    _audioPlayerService.stopAudio();
    yield PlayerState.stopped();
  }
}
