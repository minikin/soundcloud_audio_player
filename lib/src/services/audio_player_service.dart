import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart';

import 'models/models.dart';

class AudioPlayerService {
  final _audioPlayer = AudioPlayer();

  final Tune tune;

  AudioPlayerService({@required this.tune}) {
    onProgress();
  }

  void dispose() {
    _audioPlayer.dispose();
  }

  Stream<Duration> onProgress() {
    return _audioPlayer.onAudioPositionChanged;
  }

  void pauseAudio() async {
    await _audioPlayer.pause();
  }

  void playAudio() async {
    await _audioPlayer.play(tune.audioFile.audioUrl);
  }

  void resumeAudio() async {
    await _audioPlayer.resume();
  }

  void seekTo(Duration position) async {
    await _audioPlayer.seek(position);
  }

  void stopAudio() async {
    await _audioPlayer.stop();
  }
}
