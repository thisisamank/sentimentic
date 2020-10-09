import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sentimentic/logic/analysis.dart';

import '../data.dart';
import 'buttons/button_with_icon.dart';

class OutputScreen extends StatefulWidget {
  const OutputScreen({
    Key key,
  }) : super(key: key);

  @override
  _OutputScreenState createState() => _OutputScreenState();
}

class _OutputScreenState extends State<OutputScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("assets/Logo.png", width: 40),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 300,
              height: 250,
              child: Card(
                  child: Center(
                child: (Constants.resultToBeDisplayed == null)
                    ? Text(
                        "Please press back and press \" Analyse again \" ",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 26),
                      )
                    : Text(
                        Constants.resultToBeDisplayed,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 26),
                      ),
              )),
            ),
            Listener(
              child: ButtonWithIcon(text: "COPY!", icon: Icons.content_copy),
              onPointerUp: (event) {
                Clipboard.setData(
                        ClipboardData(text: Constants.resultToBeDisplayed))
                    .then((result) {
                  Fluttertoast.showToast(
                    msg: "Copied!!",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                  );
                });
              },
            ),
            Listener(
              child: ButtonWithIcon(text: "meh!", icon: Icons.refresh),
              onPointerUp: (event) {
                TextAnalysis analyser = TextAnalysis();
                Constants.resultToBeDisplayed =
                analyser.doAnalysis(Constants.input);
                setState(() {});

              },
            )
          ],
        ),
      ),
    );
  }


}
