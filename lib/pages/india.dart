import 'package:flutter/material.dart';
import '../fragments/my_drawer.dart';
import '../fragments/feeds.dart';

class IndiaNews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Trending in India"),
      ),
      drawer: MyDrawer(),
      body: Feeds(category: "india")
    );
  }
}