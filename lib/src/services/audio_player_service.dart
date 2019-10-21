import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart';

import 'models/models.dart';

class AudioPlayerService {
  final _audioPlayer = AudioPlayer();

  final Tune tune;

  AudioPlayerService({
    @required this.tune,
  });

  void dispose() {
    _audioPlayer.dispose();
  }

  void onProgress() {
    _audioPlayer.onAudioPositionChanged.listen(
      (Duration p) => {
        print('Current position: $p'),
      },
    );
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
}
