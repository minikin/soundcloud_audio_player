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
    return ClipPath(
      clipper: WaveformClipper(waveform),
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            stops: [0.1, 0.5],
            colors: [
              Colors.orange,
              Colors.grey,
            ],
            tileMode: TileMode.mirror,
          ),
        ),
      ),
    );
  }
}
