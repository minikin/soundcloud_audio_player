import 'package:audio/src/app/bloc/player_state.dart';

class PlayerBloc {
  final Stream<PlayerState> playerState;
  final Stream<double> position;

  void dispose() {}

  factory PlayerBloc() {}

  static Stream<PlayerState> _play() async* {}
}
