import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:soundcloud_audio_player/src/app/widgets/player_item.dart';
import 'package:soundcloud_audio_player/src/services/models/models.dart';

class TunesList extends StatelessWidget {
  const TunesList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 1,
        title: const Text(
          'Music',
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(8),
            color: Colors.white,
            child: FutureBuilder<BuiltList<Tune>>(
              future: Tune.loadListOfTunes('tunes'),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  final tunes = snapshot.data.toList();
                  return ListView.builder(
                    itemCount: tunes.length,
                    itemBuilder: (context, index) {
                      return PlayerItem(tune: tunes[index]);
                    },
                  );
                } else if (snapshot.hasError) {
                  return Text(
                    'Error ${snapshot.error}',
                    style: const TextStyle(
                      color: Colors.red,
                      fontSize: 24,
                    ),
                  );
                } else {
                  return const CircularProgressIndicator();
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
