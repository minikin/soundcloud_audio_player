import 'package:flutter/material.dart';

AppBar sharedAppBar(BuildContext context, String title,
    {Color backgroundColor, Color textColor}) {
  if (backgroundColor == null) {
    backgroundColor = Color(0xff4BC0C8);
  }
  if (textColor == null) {
    textColor = Colors.grey[900];
  }
  return AppBar(
    backgroundColor: backgroundColor,
    title: Text(
      title,
      style: Theme.of(context).textTheme.title.copyWith(color: textColor),
    ),
  );
}
