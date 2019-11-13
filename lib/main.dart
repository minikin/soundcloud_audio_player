import 'dart:async';

import 'package:audio/src/app/app.dart';
import 'package:audio/src/app/bloc/bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';

void main() {
  BlocSupervisor.delegate = AppBlocDelegate();

  Crashlytics.instance.enableInDevMode = true;
  FlutterError.onError = Crashlytics.instance.recordFlutterError;

  runZoned<Future<void>>(() async {
    runApp(const App());
  }, onError: Crashlytics.instance.recordError);
}
