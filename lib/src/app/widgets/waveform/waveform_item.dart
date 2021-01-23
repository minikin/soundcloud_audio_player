import 'package:flutter/material.dart';
import 'package:soundcloud_audio_player/src/app/bloc/bloc.dart';
import 'package:soundcloud_audio_player/src/services/services.dart';

class WaveFormItem extends StatelessWidget {
  final Waveform waveform;
  final PlayerBloc bloc;

  const WaveFormItem({
    @required this.waveform,
    @required this.bloc,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTapDown: (position) {
          bloc.seekTo(
            touchPosition: position.globalPosition.dx,
            widgetWidth: context.size.width,
          );
        },
        onTapUp: (_) => bloc.resume(),
        child: ClipPath(
          clipper: WaveformClipper(waveform),
          child: Container(
            height: 100,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                stops: [bloc.trackPosition, 0],
                colors: [Colors.orange, Colors.grey],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
