import 'package:audio/src/app/widgets/app_bar.dart';
import 'package:audio/src/services/models/tune.dart';
import 'package:audio/src/services/models/waveform.dart';
import 'package:audio/src/services/models/waveform_clipper.dart';
import 'package:audio/src/services/models/waveform_response.dart';
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
            padding: EdgeInsets.all(8),
            color: Colors.grey[100],
            child: FutureBuilder<List<WaveformResponse>>(
              future: WaveformResponse.loadWaveformDataList(files),
              builder:
                  (context, AsyncSnapshot<List<WaveformResponse>> snapshot) {
                if (snapshot.hasData) {
                  final waveforms = Waveform.toWaveformList(snapshot.data);
                  return ListView.builder(
                    itemCount: files.length,
                    itemBuilder: (context, index) {
                      return _listItem(waveforms[index], tunes[index]);
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
                  return CircularProgressIndicator();
                }
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _listItem(
    Waveform waveform,
    Tune tune,
  ) {
    return Container(
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
      width: double.infinity,
      height: 300,
      child: Stack(
        children: [
          Image.network(
            tune.artwork,
            fit: BoxFit.cover,
            height: 300,
            width: double.infinity,
            color: Colors.black38,
            colorBlendMode: BlendMode.hardLight,
          ),
          Positioned(
            top: 0,
            child: Container(
              width: 330,
              child: Row(
                children: [
                  _playButtom(),
                  Container(
                    width: 230,
                    child: Column(
                      children: [
                        Container(
                          height: 30,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Text(
                                  tune.artist,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              _actionButtom(icon: Icon(Icons.cloud_download)),
                            ],
                          ),
                        ),
                        Container(
                          height: 30,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Expanded(
                                child: Text(
                                  tune.title,
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey[300],
                                  ),
                                ),
                              ),
                              _actionButtom(icon: Icon(Icons.share)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: -45,
            left: 8,
            right: 8,
            child: _waveformItem(waveform),
          ),
        ],
      ),
    );
  }

  Widget _playButtom() {
    return Center(
      child: Container(
        child: IconButton(
          iconSize: 80,
          icon: Icon(Icons.play_circle_filled),
          color: Colors.orange,
          onPressed: () {
            print('filled background');
          },
        ),
      ),
    );
  }

  Widget _actionButtom({
    @required Icon icon,
  }) {
    return Center(
      child: Container(
        child: Ink(
          decoration: ShapeDecoration(
            color: Colors.orange,
            shape: CircleBorder(),
          ),
          child: IconButton(
            icon: icon,
            color: Colors.orange,
            onPressed: () {
              print('filled background');
            },
          ),
        ),
      ),
    );
  }

  Widget _waveformItem(Waveform waveform) {
    return ClipPath(
      clipper: WaveformClipper(waveform),
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            stops: [0.1, 0.5],
            colors: [
              Colors.orange,
              Colors.grey,
            ],
            tileMode: TileMode.mirror,
          ),
        ),
      ),
    );
  }
}
