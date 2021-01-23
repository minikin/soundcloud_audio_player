import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:soundcloud_audio_player/src/app/bloc/bloc.dart';
import 'package:soundcloud_audio_player/src/services/services.dart';

class PlayerBloc extends Bloc<PlayerEvent, PlayerState> {
  final AudioService _audioPlayerService;

  int _trackDuration = 0;
  int _trackPosition = 0;
  bool _isPlayed = false;
  bool _isDisposed = false;

  PlayerBloc(AudioService audioPlayerService)
      : assert(audioPlayerService != null),
        _audioPlayerService = audioPlayerService;

  @override
  PlayerState get initialState => PlayerState.stopped();

  double get trackPosition => !_gradientStart.isNaN ? _gradientStart : 0;

  double get _gradientStart => _trackPosition / _trackDuration;

  @override
  Future<void> close() {
    add(StopEvent());
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
      yield* _stopTune();
    } else if (event is TickEvent) {
      yield* _positionDidUpdate(event);
    } else if (event is SeekEvent) {
      yield* _seekToPosition(event);
    }
  }

  void resume() {
    if (_isPlayed) {
      add(ResumeEvent());
    }
  }

  void seekTo({
    @required double touchPosition,
    @required double widgetWidth,
  }) {
    final dx = _trackDuration / widgetWidth;
    final seekToPosition = (dx * touchPosition).toInt();
    add(SeekEvent(seekToPosition: seekToPosition));
  }

  void stop() => add(StopEvent());

  void toggle(Tune tune) {
    _isDisposed = false;
    if (state.stopped) {
      _isPlayed = false;
      add(PlayEvent(tune));
    } else if (state.paused) {
      add(ResumeEvent());
    } else {
      add(PauseEvent());
      _isPlayed = false;
    }
  }

  Stream<PlayerState> _pauseTune(PauseEvent event) async* {
    _audioPlayerService.pauseAudio();
    yield PlayerState.paused(_trackPosition);
  }

  Stream<PlayerState> _playTune(PlayEvent event) async* {
    _trackDuration = event.tune.audioFile.duration;
    _audioPlayerService.playAudio(tune: event.tune);
    _audioPlayerService.onProgress().listen((p) {
      _trackPosition = p.inMilliseconds;
      if (!_isDisposed) {
        add(TickEvent(position: _trackPosition));
      }
    });
    yield PlayerState.playing(_trackPosition);
  }

  Stream<PlayerState> _positionDidUpdate(TickEvent event) async* {
    if (event.position >= _trackDuration) {
      add(StopEvent());
    } else if (event.position > 0 && event.position < _trackDuration) {
      if (!state.isPaused) {
        yield PlayerState.playing(event.position);
      }
    }
  }

  Stream<PlayerState> _resumeTune(ResumeEvent event) async* {
    _audioPlayerService.resumeAudio();
    yield PlayerState.resumed(_trackPosition);
  }

  Stream<PlayerState> _seekToPosition(SeekEvent event) async* {
    _trackPosition = event.seekToPosition;
    _audioPlayerService.seekTo(Duration(milliseconds: _trackPosition.toInt()));
    if (event.seekToPosition >= _trackDuration) {
      add(StopEvent());
    } else if (state.paused) {
      yield PlayerState.paused(_trackPosition);
    } else if (state.isPlaying) {
      add(PauseEvent());
      _isPlayed = true;
    }
  }

  Stream<PlayerState> _stopTune() async* {
    _isDisposed = true;
    _audioPlayerService.stopAudio();
    _trackPosition = 0;
    _isPlayed = false;
    yield PlayerState.stopped();
  }
}
