import 'package:flutter/material.dart';

class OutlineButtonGreen extends StatelessWidget {
  const OutlineButtonGreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(20)),
      borderSide: BorderSide(
        color: Color(0xFF14E041), //Color of the border
        style: BorderStyle.solid, //Style of the border
        width: 0.8, //width of the border
       ),
      onPressed: () {},
      child: Text("Skip",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black)),
    );
  }
}
