import 'package:audio/src/app/widgets/app_bar.dart';
import 'package:audio/src/services/models/waveform.dart';
import 'package:audio/src/services/models/waveform_clipper.dart';
import 'package:flutter/material.dart';

final _files = [
  'minikin_past.json',
];

class ClipperView extends StatelessWidget {
  const ClipperView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: sharedAppBar(context, 'Waveform'),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          color: Colors.grey[100],
          child: FutureBuilder<List<Waveform>>(
            future: Waveform.loadWaveformDataList(_files),
            builder: (context, AsyncSnapshot<List<Waveform>> snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  itemCount: _files.length,
                  itemBuilder: (context, index) {
                    return _listItem(snapshot.data[index]);
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
    );
  }

  Widget _listItem(Waveform waveform) {
    return Container(
      color: Colors.grey[300],
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
      width: double.infinity,
      height: 300,
      child: Stack(
        children: [
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
                            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Text(
                                  'Artist Name',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
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
                            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Expanded(
                                child: Text(
                                  'Tune Name',
                                  style: TextStyle(
                                    fontSize: 16,
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
            bottom: 5,
            left: 25,
            child: Text('demo'),
          ),
          Positioned(
            bottom: 5,
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
          color: Colors.grey,
          splashColor: Colors.red,
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
            color: Colors.lightBlue,
            shape: CircleBorder(),
          ),
          child: IconButton(
            icon: icon,
            color: Colors.grey,
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
        margin: const EdgeInsets.fromLTRB(8, 0, 8, 0),
        height: 100,
        color: Colors.grey[600],
      ),
    );
  }
}
