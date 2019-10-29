import 'package:audio/src/app/widgets/action_button.dart';
import 'package:audio/src/app/widgets/play_button.dart';
import 'package:audio/src/app/widgets/waveform_item.dart';
import 'package:audio/src/services/audio_player_service.dart';
import 'package:audio/src/services/bloc/bloc.dart';
import 'package:audio/src/services/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PlayerItem extends StatelessWidget {
  final Tune tune;
  final PlayerBloc _playerBloc;

  PlayerItem({
    @required this.tune,
    Key key,
  })  : _playerBloc =
            PlayerBloc(audioPlayerService: AudioPlayerService(tune: tune)),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlayerBloc, PlayerState>(
      bloc: _playerBloc,
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.all(8),
          width: double.infinity,
          height: 300,
          child: Stack(
            children: <Widget>[
              Image.asset(
                tune.artwork,
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
                    children: <Widget>[
                      PlayButton(
                        stream: _playerBloc,
                        playerState: state,
                        onPressed: () => _playerBloc.toggle(tune),
                      ),
                      Container(
                        width: 230,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 30,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Text(
                                      tune.artist,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  ActionButton(
                                    icon: Icon(Icons.cloud_download),
                                    onPressed: () => print,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 30,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Expanded(
                                    child: Text(
                                      tune.title,
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.grey[300],
                                      ),
                                    ),
                                  ),
                                  ActionButton(
                                    icon: Icon(Icons.share),
                                    onPressed: () => print,
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
                  waveform: Waveform(
                    tune.audioFile.waveformResponse,
                  ),
                  trackDuration: tune.audioFile.duration,
                  trackPosition: state.position,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
