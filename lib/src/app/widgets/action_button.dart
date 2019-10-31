import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final Icon icon;
  final VoidCallback onPressed;

  const ActionButton({
    Key key,
    @required this.icon,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Ink(
        child: IconButton(
          icon: icon,
          color: Colors.orange,
          onPressed: () => onPressed,
        ),
      ),
    );
  }
}
