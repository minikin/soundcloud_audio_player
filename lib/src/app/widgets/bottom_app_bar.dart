import 'package:flutter/material.dart';

BottomAppBar sharedBottomAppBar(
  BuildContext context,
) {
  return BottomAppBar(
    child: new Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.content_cut),
          onPressed: () {
            Navigator.of(context).pushReplacementNamed("/");
          },
        ),
        IconButton(
          icon: Icon(Icons.brush),
          onPressed: () {
            Navigator.of(context).pushReplacementNamed("/painter");
          },
        ),
      ],
    ),
  );
}
