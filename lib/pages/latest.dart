import 'package:flutter/material.dart';
import '../fragments/my_drawer.dart';

class LatestNews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Trending Now"),
      ),
      drawer: MyDrawer(),
      body: Center(
        child: Text("Welcome to THIS page!"),
      )
    );
  }
}