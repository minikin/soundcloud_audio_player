import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:soundcloud_audio_player/src/app/app.dart';
import 'package:soundcloud_audio_player/src/app/bloc/bloc.dart';

void configureApp() {
  WidgetsFlutterBinding.ensureInitialized();

  runZoned<Future<void>>(
    () async {
      BlocSupervisor.delegate = AppBlocDelegate();

      await SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]);

      runApp(const App());
    },
  );
}
