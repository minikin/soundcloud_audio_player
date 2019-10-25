import 'package:audio/src/services/models/models.dart';
import 'package:flutter/material.dart';

class WaveFormItem extends StatelessWidget {
  final Waveform waveform;
  final int trackDuration;
  final _waveformContainerKey = GlobalKey();
  final double _trackPosition = 123;

  WaveFormItem({
    @required this.waveform,
    @required this.trackDuration,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = _gradientPosition();
    return GestureDetector(
      onTapDown: (details) => _onTapDown(details),
      child: ClipPath(
        clipper: WaveformClipper(waveform),
        child: Container(
          key: _waveformContainerKey,
          height: 200,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              stops: [data, 0],
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
    final y = details.globalPosition.dy;
    print('tap down: $x , $y');
  }

  double _gradientPosition() => _trackPosition / trackDuration * 1000;
}
