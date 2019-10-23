import 'package:audio/src/app/app.dart';
import 'package:audio/src/app/utils/app_bloc_delegate.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

void main() {
  BlocSupervisor.delegate = AppBlocDelegate();
  runApp(const App());
}
