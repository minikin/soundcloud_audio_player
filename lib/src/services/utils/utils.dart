import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

Future<String> loadLocalJson({
  @required String fileName,
}) async {
  return rootBundle.loadString('assets/data/$fileName.json');
}
