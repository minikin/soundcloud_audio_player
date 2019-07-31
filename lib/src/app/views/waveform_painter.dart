import 'package:audio/src/services/models/waveform.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class WaveformPainter extends CustomPainter {
  static const _defaultColor = Color.fromRGBO(69, 162, 158, 1);
  final Waveform data;
  final int startingFrame;
  final double zoomLevel;
  final Color color;
  final double strokeWidth;

  Paint painter;

  WaveformPainter({
    this.data,
    this.strokeWidth = 1,
    this.startingFrame = 0,
    this.zoomLevel = 1,
    this.color = _defaultColor,
  }) {
    painter = Paint()
      ..style = PaintingStyle.fill
      ..color = color
      ..strokeWidth = strokeWidth
      ..isAntiAlias = true;
  }

  @override
  void paint(Canvas canvas, Size size) {
    if (data == null) {
      return;
    }

    final path = data.path(
      size,
      zoomLevel: zoomLevel,
      fromFrame: startingFrame,
    );
    canvas.drawPath(path, painter);
  }

  @override
  bool shouldRepaint(WaveformPainter oldDelegate) {
    if (oldDelegate.data != data) {
      debugPrint("Redrawing");
      return true;
    }
    return false;
  }
}
