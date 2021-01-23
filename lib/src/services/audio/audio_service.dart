library audio_service;

import 'package:audioplayers/audioplayers.dart';
import 'package:built_value/built_value.dart';
import 'package:flutter/foundation.dart' show required;
import 'package:soundcloud_audio_player/src/services/models/models.dart';

part 'audio_service.g.dart';

abstract class AudioService
    implements Built<AudioService, AudioServiceBuilder> {
  factory AudioService([void Function(AudioServiceBuilder) updates]) =
      _$AudioService;

  AudioService._();

  AudioPlayer get audioPlayer;

  void dispose() => audioPlayer.dispose();

  Stream<Duration> onProgress() => audioPlayer.onAudioPositionChanged;

  void pauseAudio() async => await audioPlayer.pause();

  void playAudio({@required Tune tune}) async {
    await audioPlayer.play(tune.audioFile.audioUrl);
  }

  void resumeAudio() async => await audioPlayer.resume();

  void seekTo(Duration position) async => await audioPlayer.seek(position);

  void stopAudio() async => await audioPlayer.stop();

  static AudioService init() {
    final audioService = AudioService((b) => b..audioPlayer = AudioPlayer());
    audioService.onProgress();
    return audioService;
  }
}
