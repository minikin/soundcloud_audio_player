import 'package:audio/src/app/models/player_state.dart';
import 'package:rxdart/rxdart.dart';

class PlayerBloc {
  final _isFirstStart = BehaviorSubject<bool>();
  final _onPlayButonPressed = BehaviorSubject<bool>();
  final Observable<PlayerState> playerState;

  Function(bool) get onPlayButonPressed => _onPlayButonPressed.sink.add;

  PlayerBloc._(
    this.playerState,
  );

  void dispose() {
    _onPlayButonPressed.close();
    _isFirstStart.close();
  }

  // factory PlayerBloc(
  //   Tune tune,
  // ) {
  //   final onPlayButonChanged = BehaviorSubject<bool>();

  //   final state = onPlayButonChanged
  //       .distinct()
  //       .switchMap<PlayerState>(
  //           (bool onPlayButonPressed) => _play(tune, onPlayButonPressed))
  //       .startWith(Stopped());

  //   return PlayerBloc._(onPlayButonChanged, state);
  // }

  // static Stream<PlayerState> _play(
  //   bool isFirstStart,
  //   bool onPlayButonPressed,
  // ) async* {
  //   if (isFirstStart) {
  //     yield PlayerState.playing;
  //   } else if (!isFirstStart && !onPlayButonPressed) {
  //     yield PlayerState.resumed;
  //   } else {
  //     yield PlayerState.paused;
  //   }
  // }
}
