import 'package:audio/src/services/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class WaveformPainter extends CustomPainter {
  final Color color;
  final double strokeWidth;
  final double zoomLevel;
  final int startingFrame;
  final Waveform data;
  Paint painter;
  static const _defaultColor = Color.fromRGBO(69, 162, 158, 1);

  WaveformPainter({
    this.color = _defaultColor,
    this.strokeWidth = 1,
    this.zoomLevel = 1,
    this.startingFrame = 0,
    this.data,
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
      debugPrint('Redrawing');
      return true;
    }
    return false;
  }
}
