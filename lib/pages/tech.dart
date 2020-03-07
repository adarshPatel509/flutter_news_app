import 'package:flutter/material.dart';
import '../fragments/my_drawer.dart';
import '../fragments/feeds.dart';

class TechNews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latest Tech"),
      ),
      drawer: MyDrawer(),
      body: Feeds(category: "tech")
    );
  }
}