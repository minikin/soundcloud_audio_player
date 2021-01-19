import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:soundcloud_audio_player/src/app/app.dart';
import 'package:soundcloud_audio_player/src/app/bloc/bloc.dart';

void main() {
  BlocSupervisor.delegate = AppBlocDelegate();
  runApp(const App());
}
