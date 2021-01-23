import 'package:flutter/material.dart';
import 'package:soundcloud_audio_player/src/app/screens/tunes_list.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TunesList();
  }
}
