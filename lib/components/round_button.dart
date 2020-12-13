import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  RoundButton({this.action, this.icon});

  final Function action;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: action,
      child: Icon(icon),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      elevation: 10.0,
    );
  }
}
