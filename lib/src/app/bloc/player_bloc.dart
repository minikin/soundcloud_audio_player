import 'package:audio/src/app/bloc/player_state.dart';
import 'package:audio/src/services/models/models.dart';
import 'package:rxdart/rxdart.dart';

class PlayerBloc {
  final BehaviorSubject<bool> _onPlayButonPressed;

  final Observable<PlayerState> playerState;

  Function(bool) get onPlayButonPressed => _onPlayButonPressed.sink.add;

  PlayerBloc._(
    this._onPlayButonPressed,
    this.playerState,
  );

  void dispose() {
    _onPlayButonPressed.close();
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

  static Stream<PlayerState> _play(
    Tune tune,
    bool onPlayButonPressed,
  ) async* {
    if (onPlayButonPressed) {
      yield Playing();
    } else {
      yield Paused();
    }
  }
}
