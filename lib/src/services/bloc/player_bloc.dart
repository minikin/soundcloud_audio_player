import 'dart:async';

import 'package:audio/src/services/bloc/bloc.dart';
import 'package:bloc/bloc.dart';

class PlayerBloc extends Bloc<PlayerEvent, PlayerState> {
  @override
  PlayerState get initialState => PlayerState.stopped();

  @override
  Stream<PlayerState> mapEventToState(
    PlayerEvent event,
  ) async* {}
}
