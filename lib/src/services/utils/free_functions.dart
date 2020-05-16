import 'package:flutter/widgets.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;

Future<String> loadLocalJson({
  @required String fileName,
}) async {
  return rootBundle.loadString('assets/data/$fileName.json');
}
