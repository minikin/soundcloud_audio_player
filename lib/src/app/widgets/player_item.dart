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
  bool _playerIsPlaying = false;
  bool _isFirstStrast = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
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
                  _playButtom(),
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
                              _actionButtom(icon: Icon(Icons.cloud_download)),
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
                              _actionButtom(icon: Icon(Icons.share)),
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
  void initState() {
    _audioPlayer = AudioPlayerService(tune: widget.tune);
    _audioPlayer.onProgress();
    super.initState();
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    _playerIsPlaying = false;
    super.dispose();
  }

  Widget _actionButtom({
    @required Icon icon,
  }) {
    return Center(
      child: Container(
        child: Ink(
          decoration: ShapeDecoration(
            color: Colors.orange,
            shape: CircleBorder(),
          ),
          child: IconButton(
            icon: icon,
            color: Colors.orange,
            onPressed: () {
              print('actionButtom was pressed');
            },
          ),
        ),
      ),
    );
  }

  Widget _playButtom() {
    return Center(
      child: Container(
        child: IconButton(
          iconSize: 80,
          icon: _playerIsPlaying
              ? Icon(Icons.pause)
              : Icon(Icons.play_circle_filled),
          color: Colors.orange,
          onPressed: () => setState(() => _togglePlayerMode()),
        ),
      ),
    );
  }

  void _togglePlayerMode() {
    if (_isFirstStrast) {
      _playerIsPlaying = true;
      _isFirstStrast = false;
      _audioPlayer.playAudio();
    } else if (!_isFirstStrast && !_playerIsPlaying) {
      _playerIsPlaying = true;
      _audioPlayer.resumeAudio();
    } else {
      _playerIsPlaying = false;
      _audioPlayer.pauseAudio();
    }
  }
}
