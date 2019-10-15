import 'package:audio/src/app/views/clipper_view.dart';
import 'package:audio/src/app/views/painter_view.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Waveform',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => ClipperView(),
        '/painter': (context) => PainterView(),
      },
    );
  }
}
