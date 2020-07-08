import 'package:flutter/material.dart';
import 'package:offerapp/screens/OnboardingScreen.dart';
import 'package:offerapp/screens/HomeScreen.dart';
import 'package:offerapp/screens/menu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),
        routes: <String, WidgetBuilder>{
          '/HomeScreen': (BuildContext context) => new HomeScreen(),
        });
  }
}


