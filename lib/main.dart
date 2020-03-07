import 'package:flutter/material.dart';
import './pages/latest.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "News App",
        theme: ThemeData(
          primaryColor: Colors.cyan,
        ),
        initialRoute: "/latest",
        routes: {
          '/latest': (context) => LatestNews(),
          '/india': (context) => LatestNews(),
          '/tech': (context) => LatestNews(),
          '/world': (context) => LatestNews(),
        });
  }
}