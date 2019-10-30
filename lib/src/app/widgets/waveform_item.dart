import 'package:audio/src/services/bloc/bloc.dart';
import 'package:audio/src/services/models/models.dart';
import 'package:flutter/material.dart';

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
    return GestureDetector(
      onTapDown: (details) => _onTapDown(details),
      child: ClipPath(
        clipper: WaveformClipper(waveform),
        child: Container(
          height: 200,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              stops: [bloc.gradientStart, 0],
              colors: [
                Colors.orange,
                Colors.grey,
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onTapDown(TapDownDetails details) {
    final x = details.globalPosition.dx;
    print('tap down: $x');
    bloc.seekTo(20000);
  }
}
