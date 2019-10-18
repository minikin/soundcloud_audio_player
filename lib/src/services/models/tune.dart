library tune;

import 'package:built_value/built_value.dart';

part 'tune.g.dart';

abstract class Tune implements Built<Tune, TuneBuilder> {
  String get artist;
  String get title;
  String get artwork;
  String get waveformDataPath;

  Tune._();

  factory Tune([void Function(TuneBuilder) updates]) = _$Tune;
}
