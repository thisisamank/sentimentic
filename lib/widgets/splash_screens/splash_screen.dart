import 'package:flutter/material.dart';
import 'package:sentimentic/widgets/buttons/button_with_arrow.dart';
import 'package:sentimentic/widgets/buttons/outline_green_button.dart';
import 'package:sentimentic/widgets/splash_screens/splash_card_info.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({
    Key key,
    @required this.textToDisplay,
  }) : super(key: key);

  final String textToDisplay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 25),
        child: Stack(
          children: [
            Positioned(
              right: 20,
              top: 20,
              child: Listener(
                onPointerDown: (event) {
                  Navigator.pushNamed(context, '/input');
                  print("object");
                },
                child: OutlineButtonGreen(),
              ),
            ),
            Positioned(
              child: Image.asset('assets/background.png'),
              top: 40,
            ),
            Positioned(
              child: Image.asset('assets/human.png', width: 299, height: 315),
              top: 60,
            ),
            Positioned(
              child: SplashCard(textToDisplay: textToDisplay),
              top: 360,
              left: 25,
            ),
            Positioned(
              child: Listener(
                child: ButtonWithArrow(text: "NEXT"),
                onPointerUp: (event) {
                  Navigator.pushNamed(context, '/info');
                },
              ),
              bottom: 30,
              left: 90,
            ),
            Positioned(
              child: Image.asset('assets/LineWhite.png'),
              bottom: 10,
              left: 105,
            ),
          ],
        ),
      ),
    );
  }
}
