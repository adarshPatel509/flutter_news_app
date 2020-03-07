import 'package:flutter/material.dart';
import './pages/latest.dart';
import './pages/tech.dart';
import './pages/world.dart';
import './pages/india.dart';

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
          '/india': (context) => IndiaNews(),
          '/tech': (context) => TechNews(),
          '/world': (context) => WorldNews(),
        });
  }
}