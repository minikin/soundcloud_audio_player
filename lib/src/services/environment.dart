library environment;

import 'package:built_value/built_value.dart';

part 'environment.g.dart';

abstract class Environment implements Built<Environment, EnvironmentBuilder> {
  Environment._();

  factory Environment([updates(EnvironmentBuilder b)]) = _$Environment;
}
