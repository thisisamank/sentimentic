import 'package:flutter/material.dart';
import 'package:sentimentic/logic/analysis.dart';

import '../data.dart';
import 'buttons/button_with_icon.dart';

class InputScreen extends StatelessWidget {
  final TextEditingController mAnalyserController = TextEditingController();
  final TextAnalysis analysisDoer = new TextAnalysis();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("assets/Logo.png", width: 40),
      ),
        body: SingleChildScrollView(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 60),
            Container(
              width: 310,
              height: 254,
              child: TextField(
                controller: mAnalyserController,
                maxLines: 8,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(16),
                    hintText: "Enter your Text",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )
                    // hintStyle: TextStyle(),
                    ),
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
            Listener(
              child: ButtonWithIcon(
                text: "ANALYSE",
                icon: Icons.search,
              ),
              onPointerUp: (event) {
                String text = mAnalyserController.text;
                String result = analysisDoer.doAnalysis(text);
                Constants.resultToBeDisplayed = result;
                Constants.input = text;
                Navigator.pushNamed(context, '/output');
              },
            ),
            SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset("assets/facebook.png"),
                Image.asset("assets/twitter.png"),
                Image.asset("assets/instagram.png"),
              ],
            ),
            SizedBox(height: 40),
            Image.asset("assets/lineBlack.png")
          ],
        )),
      ),
    );
  }
}
