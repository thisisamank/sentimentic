import 'package:flutter/material.dart';

class SplashCard extends StatelessWidget {
  const SplashCard({
    Key key,
    @required this.textToDisplay,
  }) : super(key: key);

  final String textToDisplay;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFF122966),
      child: Container(
        width: 298,
        height: 157,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Text(
              textToDisplay,
              textAlign: TextAlign.center,
              style: TextStyle(
              fontSize: 28,
              color: Colors.white)),
          ),
        ),
      ),
    );
  }
}