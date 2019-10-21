import 'package:audio/src/services/models/waveform.dart';
import 'package:audio/src/services/models/waveform_clipper.dart';
import 'package:flutter/material.dart';

class WaveFormItem extends StatelessWidget {
  final Waveform waveform;

  const WaveFormItem({
    @required this.waveform,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) => _onTapDown(details),
      onTapUp: (details) => _onTapUp(details),
      child: ClipPath(
        clipper: WaveformClipper(waveform),
        child: Container(
          height: 200,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              stops: [0.34, 0],
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

  void _onTapUp(TapUpDetails details) {
    final x = details.globalPosition.dx;
    final y = details.globalPosition.dy;
    print('tap up: $x , $y');
  }
}
