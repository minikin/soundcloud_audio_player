import 'package:audio/src/app/models/player_state.dart';
import 'package:audio/src/app/widgets/action_button.dart';
import 'package:audio/src/app/widgets/play_button.dart';
import 'package:audio/src/app/widgets/waveform_item.dart';
import 'package:audio/src/services/audio_player_service.dart';
import 'package:audio/src/services/models/models.dart';
import 'package:flutter/material.dart';

class PlayerItem extends StatefulWidget {
  final Tune tune;

  const PlayerItem({
    @required this.tune,
    Key key,
  }) : super(key: key);

  @override
  _PlayerItemState createState() => _PlayerItemState();
}

class _PlayerItemState extends State<PlayerItem> {
  AudioPlayerService _audioPlayer;
  PlayerState _playerState = PlayerState.stopped;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      width: double.infinity,
      height: 300,
      child: Stack(
        children: [
          Image.asset(
            widget.tune.artwork,
            fit: BoxFit.cover,
            height: 300,
            width: double.infinity,
            color: Colors.black38,
            colorBlendMode: BlendMode.hardLight,
          ),
          Positioned(
            top: 0,
            child: Container(
              width: 330,
              child: Row(
                children: [
                  PlayButton(
                    consumeStream: false,
                    playerState: _playerState,
                    onPressed: () => setState(() => _togglePlayerMode()),
                  ),
                  Container(
                    width: 230,
                    child: Column(
                      children: [
                        Container(
                          height: 30,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Text(
                                  widget.tune.artist,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              ActionButton(
                                icon: Icon(Icons.cloud_download),
                                onPressed: () =>
                                    print('ActionButton was pressed'),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 30,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Text(
                                  widget.tune.title,
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey[300],
                                  ),
                                ),
                              ),
                              ActionButton(
                                icon: Icon(Icons.share),
                                onPressed: () =>
                                    print('ActionButton was pressed'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: -45,
            left: 8,
            right: 8,
            child: WaveFormItem(
              waveform: Waveform(widget.tune.audioFile.waveformResponse),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _audioPlayer = AudioPlayerService(tune: widget.tune);
    super.initState();
  }

  void _togglePlayerMode() {
    switch (_playerState) {
      case PlayerState.stopped:
        _audioPlayer.playAudio();
        setState(() => _playerState = PlayerState.playing);
        break;
      case PlayerState.playing:
        _audioPlayer.pauseAudio();
        setState(() => _playerState = PlayerState.paused);
        break;
      case PlayerState.paused:
        _audioPlayer.resumeAudio();
        setState(() => _playerState = PlayerState.resumed);
        break;
      case PlayerState.resumed:
        _audioPlayer.pauseAudio();
        setState(() => _playerState = PlayerState.paused);
        break;
      default:
        _audioPlayer.stopAudio();
        setState(() => _playerState = PlayerState.stopped);
        break;
    }
  }
}
