import 'package:audio/src/app/widgets/app_bar.dart';
import 'package:audio/src/services/models/waveform.dart';
import 'package:audio/src/services/models/waveform_clipper.dart';
import 'package:flutter/material.dart';

final _files = [
  'minikin_past.json',
  'minikin_past.json',
  'minikin_past.json',
  'minikin_past.json',
  'minikin_past.json',
  'minikin_past.json',
  'minikin_past.json',
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
    return ClipPath(
      clipper: WaveformClipper(waveform),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.1, 0.3, 0.9],
            colors: [
              Color(0xffFEAC5E),
              Color(0xffC779D0),
              Color(0xff4BC0C8),
            ],
          ),
        ),
      ),
    );
  }
}
