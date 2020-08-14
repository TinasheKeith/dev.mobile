import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final primaryColor = Colors.blueAccent[700];
  final Color canvasColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'dev.mobile',
      theme: ThemeData(
        primaryColor: primaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        brightness: Brightness.dark,
        backgroundColor: canvasColor,
      ),
      routes: {
        "/": (context) => App(),
      },
    );
  }
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
