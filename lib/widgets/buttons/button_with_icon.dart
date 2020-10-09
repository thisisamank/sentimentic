import 'package:flutter/material.dart';

class ButtonWithIcon extends StatelessWidget {
  const ButtonWithIcon({Key key, @required this.text, this.icon})
      : super(key: key);

  final String text;
  final icon;
  @override
  Widget build(BuildContext context) {
    return Container(
    
    height: 48,
    width: 150,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Color(0xFF122966),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 3,
          blurRadius: 7,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          text,
          style: TextStyle(fontSize: 23, color: Colors.white),
        ),
        SizedBox(width: 7),
        Icon(icon,color: Colors.white,size: 22)
      ],
    ),
      );
  }
}
