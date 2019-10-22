import 'package:audio/src/app/models/player_state.dart';
import 'package:flutter/material.dart';

class PlayButton<S> extends StatelessWidget {
  final bool consumeStream;
  final Color activeColor;
  final Color disabledColor;
  final PlayerState playerState;
  final Stream<S> stream;
  final VoidCallback onPressed;

  const PlayButton({
    Key key,
    this.consumeStream = true,
    this.activeColor = Colors.orange,
    this.disabledColor = Colors.grey,
    this.playerState = PlayerState.stopped,
    this.stream,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: stream,
      builder: (context, snapshot) {
        return Container(
          child: IconButton(
            iconSize: 80,
            icon: _configureIcon(),
            color: activeColor,
            disabledColor: disabledColor,
            onPressed: _configureState(snapshot),
          ),
        );
      },
    );
  }

  Icon _configureIcon() {
    switch (playerState) {
      case PlayerState.stopped:
        return Icon(Icons.play_circle_filled);
      case PlayerState.playing:
        return Icon(Icons.pause);
      case PlayerState.paused:
        return Icon(Icons.play_circle_filled);
      case PlayerState.resumed:
        return Icon(Icons.pause);
      default:
        return Icon(Icons.stop);
    }
  }

  VoidCallback _configureState(AsyncSnapshot<dynamic> snapshot) {
    if (consumeStream) {
      return (snapshot.hasData) ? onPressed : null;
    } else {
      return onPressed;
    }
  }
}
