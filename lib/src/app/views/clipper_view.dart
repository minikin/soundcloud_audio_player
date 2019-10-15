import 'package:audio/src/app/widgets/app_bar.dart';
import 'package:audio/src/app/widgets/bottom_app_bar.dart';
import 'package:audio/src/services/models/waveform.dart';
import 'package:audio/src/services/models/waveform_clipper.dart';
import 'package:flutter/material.dart';

class ClipperView extends StatelessWidget {
  const ClipperView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: sharedAppBar(context, 'Waveform Clipper'),
      bottomNavigationBar: sharedBottomAppBar(context),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Container(
                color: Colors.grey[900],
                child: FutureBuilder<Waveform>(
                  future: Waveform.loadWaveformData('minikin_acid.json'),
                  builder: (context, AsyncSnapshot<Waveform> snapshot) {
                    if (snapshot.hasData) {
                      print(snapshot);
                      return LayoutBuilder(
                          builder: (context, BoxConstraints constraints) {
                        // adjust the shape based on parent's orientation/shape
                        // the waveform should always be wider than taller
                        double height;
                        if (constraints.maxWidth < constraints.maxHeight) {
                          height = constraints.maxWidth;
                        } else {
                          height = constraints.maxHeight;
                        }

                        return ClipPath(
                          clipper: WaveformClipper(snapshot.data),
                          child: Container(
                            height: height,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
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
                      });
                    } else if (snapshot.hasError) {
                      return Text('Error ${snapshot.error}',
                          style: TextStyle(color: Colors.red));
                    }
                    return CircularProgressIndicator();
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
