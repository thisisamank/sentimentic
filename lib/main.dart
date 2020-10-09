import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sentimentic/widgets/InputScreen.dart';
import 'package:sentimentic/widgets/output_screen.dart';
import 'package:sentimentic/widgets/splash_screens/splash_screen.dart';
import 'package:sentimentic/widgets/splash_screens/splash_screen_instructions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final String textToDisplay = 'Want to know about your text sentiment';
  final String messageText =
      "Just copy & paste your message and this app will generate a curse or compliment, depending on text!";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
        theme: ThemeData(
            textTheme: GoogleFonts.latoTextTheme(
              Theme.of(context).textTheme,
            ),
            primaryColor: Color(0xFF14E041)),
        debugShowCheckedModeBanner: false,
        home: SplashScreen(textToDisplay: textToDisplay),
            routes: {
              '/input':(context)=>InputScreen(),
              '/output':(context)=>OutputScreen(),
              '/info':(context)=>SlpashScreenInstructions(messageText: messageText)
            },
            );
        
  }
}

