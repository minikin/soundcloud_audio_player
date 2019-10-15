import 'package:flutter/material.dart';

BottomAppBar sharedBottomAppBar(
  BuildContext context,
) {
  return BottomAppBar(
    child: Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: Icon(Icons.content_cut),
          onPressed: () {
            Navigator.of(context).pushReplacementNamed('/');
          },
        ),
        IconButton(
          icon: Icon(Icons.brush),
          onPressed: () {
            Navigator.of(context).pushReplacementNamed('/painter');
          },
        ),
      ],
    ),
  );
}
