import 'package:flutter/material.dart';

AppBar sharedAppBar(
  BuildContext context,
  String title, {
  Color backgroundColor,
  Color textColor,
}) {
  if (backgroundColor == null) {
    backgroundColor = Colors.white;
  }
  if (textColor == null) {
    textColor = Colors.black;
  }
  return AppBar(
    backgroundColor: backgroundColor,
    brightness: Brightness.light,
    elevation: 1,
    title: Text(
      title,
      style: Theme.of(context).textTheme.title.copyWith(color: textColor),
    ),
  );
}
