import 'package:dev_mobile/services/articles_service.dart';
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
        appBarTheme: AppBarTheme(
          elevation: 0,
          centerTitle: true,
        ),
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
    return Scaffold(
      appBar: AppBar(
        title: Text("dev.mobile!"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            ArticlesService.getArticles();
          },
          child: Text("get articles 🗞"),
        ),
      ),
    );
  }
}
