import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

Future<String> loadLocalJson({@required String fileName}) async {
  return rootBundle.loadString('assets/data/$fileName.json');
}

extension BuildContextExtension on BuildContext {
  MediaQueryData get _mediaQueryData => MediaQuery.of(this);
  Size get screenSize => _mediaQueryData.size;
  double get screenWidth => screenSize.width;
  double get screenHeight => screenSize.height;
}
