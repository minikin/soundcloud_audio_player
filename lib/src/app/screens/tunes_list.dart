import 'package:audio/src/app/widgets/app_bar.dart';
import 'package:audio/src/app/widgets/player_item.dart';
import 'package:audio/src/services/models/models.dart';
import 'package:audio/src/services/utils/utils.dart';
import 'package:flutter/material.dart';

class TunesList extends StatelessWidget {
  const TunesList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: sharedAppBar(context, 'Music'),
      body: SafeArea(
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(8),
            color: Colors.grey[100],
            child: FutureBuilder<List<Tune>>(
              future: ,
              // future: WaveformResponse.loadWaveformDataList(
              //   tunes.map((item) => item.waveformDataPath).toList(),
              // ),
              builder:
                  (context, AsyncSnapshot<List<Tune>> snapshot) {
                if (snapshot.hasData) {
                  // final waveforms = Waveform.toWaveformList(snapshot.data);
                  return ListView.builder(
                    itemCount: tunes.length,
                    itemBuilder: (context, index) {
                      return PlayerItem(
                        tune: tunes[index]);
                    },
                  );
                } else if (snapshot.hasError) {
                  return Text(
                    'Error ${snapshot.error}',
                    style: TextStyle(
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
