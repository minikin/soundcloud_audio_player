import 'package:audio/src/services/models/tune.dart';

final List<Tune> tunes = [
  Tune(
    (b) => b
      ..artist = 'Minikin'
      ..title = 'Acid Rain'
      ..artwork = 'assets/artworks/1.jpeg'
      ..waveformDataPath = 'minikin_raw.json',
  ),
  Tune(
    (b) => b
      ..artist = 'Minikin'
      ..title = 'Background'
      ..artwork = 'assets/artworks/2.jpeg'
      ..waveformDataPath = 'minikin_background.json',
  ),
  Tune(
    (b) => b
      ..artist = 'Minikin'
      ..title = 'Brng4'
      ..artwork = 'assets/artworks/3.jpeg'
      ..waveformDataPath = 'minikin_past.json',
  ),
];
