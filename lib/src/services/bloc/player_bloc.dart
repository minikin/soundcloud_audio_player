import 'dart:async';

import 'package:audio/src/services/audio_player_service.dart';
import 'package:audio/src/services/bloc/bloc.dart';
import 'package:audio/src/services/models/models.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

class PlayerBloc extends Bloc<PlayerEvent, PlayerState> {
  final AudioPlayerService _audioPlayerService;
  var _position = 0;

  PlayerBloc({
    @required AudioPlayerService audioPlayerService,
  })  : assert(audioPlayerService != null),
        _audioPlayerService = audioPlayerService;

  @override
  PlayerState get initialState => PlayerState.stopped();

  int get tunePostion => _position;

  @override
  Stream<PlayerState> mapEventToState(PlayerEvent event) async* {
    if (event is Pause) {
      yield* _pauseTune();
    } else if (event is PlayEvent) {
      yield* _playTune(event.tune);
    } else if (event is Resume) {
      yield* _resumeTune();
    } else if (event is Stop) {
      yield* _stopTune();
    }
  }

  void toggle(Tune tune) {
    if (state == PlayerState.stopped()) {
      this.add(PlayEvent((b) => b..tune.replace(tune)));
    } else if (state == PlayerState.playing(_position)) {
      this.add(Pause((b) => b));
    } else if (state == PlayerState.paused()) {
      this.add(Resume((b) => b));
    } else if (state == PlayerState.resumed()) {
      this.add(Pause((b) => b));
    }
  }

  Stream<PlayerState> _pauseTune() async* {
    _audioPlayerService.pauseAudio();
    yield PlayerState.paused();
  }

  Stream<PlayerState> _playTune(Tune tune) async* {
    _audioPlayerService.playAudio();

    _audioPlayerService.onProgress().listen(
          (p) => {
            _position = p.inMilliseconds,
            print('Current position: $_position'),
          },
        );

    yield PlayerState.playing(_position);
  }

  Stream<PlayerState> _resumeTune() async* {
    _audioPlayerService.resumeAudio();
    yield PlayerState.resumed();
  }

  Stream<PlayerState> _stopTune() async* {
    _audioPlayerService.stopAudio();
    yield PlayerState.stopped();
  }
}
