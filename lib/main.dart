import 'dart:async';

import 'package:audio/src/app/app.dart';
import 'package:audio/src/app/utils/app_bloc_delegate.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';

void main() {
  BlocSupervisor.delegate = AppBlocDelegate();

  Crashlytics.instance.enableInDevMode = true;
  FlutterError.onError = Crashlytics.instance.recordFlutterError;

  runZoned<Future<void>>(() async {
    runApp(const App());
  }, onError: Crashlytics.instance.recordError);
}
