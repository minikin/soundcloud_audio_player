import 'package:flutter/material.dart';
import 'package:soundcloud_audio_player/src/app/bloc/bloc.dart';

class PlayButton<S> extends StatelessWidget {
  final PlayerState playerState;
  final Stream<S> stream;
  final Color disabledColor;
  final VoidCallback onPressed;
  final Color activeColor;

  const PlayButton({
    @required this.playerState,
    @required this.stream,
    @required this.onPressed,
    this.activeColor = Colors.orange,
    this.disabledColor = Colors.grey,
    Key key,
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
            onPressed: (snapshot.hasData) ? onPressed : null,
          ),
        );
      },
    );
  }

  Icon _configureIcon() {
    if (playerState == PlayerState.stopped()) {
      return const Icon(Icons.play_circle_filled);
    } else if (playerState == PlayerState.playing(playerState.position)) {
      return const Icon(Icons.pause);
    } else if (playerState == PlayerState.paused(playerState.position)) {
      return const Icon(Icons.play_circle_filled);
    } else if (playerState == PlayerState.resumed(playerState.position)) {
      return const Icon(Icons.pause);
    } else {
      return const Icon(Icons.stop);
    }
  }
}
