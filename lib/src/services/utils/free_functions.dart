import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;

Future<String> loadLocalJson({required String fileName}) async {
  return rootBundle.loadString('assets/data/$fileName.json');
}
