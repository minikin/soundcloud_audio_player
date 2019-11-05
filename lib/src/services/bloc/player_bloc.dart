import 'dart:async';

import 'package:audio/src/services/audio_player_service.dart';
import 'package:audio/src/services/bloc/bloc.dart';
import 'package:audio/src/services/models/models.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

class PlayerBloc extends Bloc<PlayerEvent, PlayerState> {
  final AudioPlayerService _audioPlayerService;
  int _trackDuration = 0;
  int _trackPosition = 0;

  PlayerBloc({
    @required AudioPlayerService audioPlayerService,
  })  : assert(audioPlayerService != null),
        _audioPlayerService = audioPlayerService;

  double get _gradientStart => _trackPosition / _trackDuration;
  double get gradientStart => !_gradientStart.isNaN ? _gradientStart : 0;

  @override
  PlayerState get initialState => PlayerState.stopped();

  @override
  Future<void> close() {
    _audioPlayerService.dispose();
    return super.close();
  }

  @override
  Stream<PlayerState> mapEventToState(PlayerEvent event) async* {
    if (event is PauseEvent) {
      yield* _pauseTune(event);
    } else if (event is PlayEvent) {
      yield* _playTune(event);
    } else if (event is ResumeEvent) {
      yield* _resumeTune(event);
    } else if (event is StopEvent) {
      yield* _stopTune(event);
    } else if (event is TickEvent) {
      yield* _positionDidUpdated(event);
    }
  }

  void seekTo({
    @required double touchPosition,
    @required double widgetWidth,
  }) {
    final dx = _trackDuration / widgetWidth;
    final seekToPosition = (dx * touchPosition).toInt();
    _audioPlayerService.seekTo(Duration(milliseconds: seekToPosition));
  }

  void toggle(Tune tune) {
    if (state == PlayerState.stopped()) {
      add(PlayEvent((b) => b..tune.replace(tune)));
    } else if (state == PlayerState.playing(_trackPosition)) {
      add(PauseEvent((b) => b));
    } else {
      add(ResumeEvent((b) => b));
    }
  }

  Stream<PlayerState> _pauseTune(PauseEvent event) async* {
    _audioPlayerService.pauseAudio();
    yield PlayerState.paused(_trackPosition);
  }

  Stream<PlayerState> _playTune(PlayEvent event) async* {
    _trackDuration = event.tune.audioFile.duration;
    _audioPlayerService.playAudio();
    _audioPlayerService.onProgress().listen((p) {
      _trackPosition = p.inMilliseconds;
      return add(
        TickEvent(position: _trackPosition),
      );
    });
    yield PlayerState.playing(_trackPosition);
  }

  Stream<PlayerState> _positionDidUpdated(TickEvent event) async* {
    if (event.position >= _trackDuration) {
      yield PlayerState.stopped();
    } else if (event.position > 0 && event.position < _trackDuration) {
      yield PlayerState.playing(event.position);
    }
  }

  Stream<PlayerState> _resumeTune(ResumeEvent event) async* {
    _audioPlayerService.resumeAudio();
    yield PlayerState.resumed(_trackPosition);
  }

  Stream<PlayerState> _stopTune(StopEvent event) async* {
    _audioPlayerService.stopAudio();
    yield PlayerState.stopped();
  }
}
