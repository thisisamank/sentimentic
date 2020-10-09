import 'package:flutter/material.dart';
import 'package:sentimentic/widgets/buttons/button_with_arrow.dart';

class SlpashScreenInstructions extends StatelessWidget {
  const SlpashScreenInstructions({
    Key key,
    @required this.messageText,
  }) : super(key: key);

  final String messageText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
        child: Stack(
          children: [
            Positioned(
              top: 32,
              left: 10,
              child: Listener(
                onPointerUp: (event) {
                  Navigator.pushNamed(context, '/info');
                  print("object");
                },
                child: Image.asset("assets/back.png", width: 36, height: 36),
              ),
            ),
            Positioned(
              child:
                  Image.asset("assets/illustration.png", width: 328, height: 540),
              top: 52,
              left: 16,
            ),
            Positioned(
              child: Image.asset(
                "assets/shape.png",
                width: 240,
              ),
              bottom: 100,
              left: 60,
            ),
            Positioned(
              width: 160,
              child: Text(
                messageText,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                ),
              ),
              bottom: 140,
              left: 110,
            ),
            Positioned(
              bottom: 50,
              left: 100,
              child: Listener(
                onPointerDown: (event) {
                  Navigator.pushNamed(context, '/input');
                  print("object");

                },
                child: ButtonWithArrow(text: "FINISH"),
              ),
            ),
            Positioned(
                child: Image.asset("assets/lineBlack.png"), bottom: 10, left: 100)
          ],
        ),
      ),
    );
  }
}
