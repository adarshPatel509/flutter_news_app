import 'package:flutter/material.dart';
import '../fragments/my_drawer.dart';
import '../fragments/feeds.dart';

class WorldNews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Trending WorldWide"),
      ),
      drawer: MyDrawer(),
      body: Feeds(category: "world")
    );
  }
}