import 'package:audio/src/app/widgets/app_bar.dart';
import 'package:audio/src/app/widgets/bottom_app_bar.dart';
import 'package:audio/src/app/widgets/painted_waveform.dart';
import 'package:audio/src/services/models/waveform.dart';
import 'package:flutter/material.dart';

class PainterView extends StatelessWidget {
  const PainterView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: sharedAppBar(context, 'Waveform Painter'),
      bottomNavigationBar: sharedBottomAppBar(context),
      body: Center(
        child: FutureBuilder<Waveform>(
          future: Waveform.loadWaveformData('minikin_acid.json'),
          builder: (context, AsyncSnapshot<Waveform> snapshot) {
            if (snapshot.hasData) {
              return PaintedWaveform(sampleData: snapshot.data);
            } else if (snapshot.hasError) {
              return Text(
                'Error ${snapshot.error}',
                style: TextStyle(color: Colors.red),
              );
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
