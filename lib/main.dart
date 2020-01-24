import 'package:audio/src/app/app.dart';
import 'package:audio/src/app/bloc/bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

void main() {
  BlocSupervisor.delegate = AppBlocDelegate();
  runApp(const App());
}
