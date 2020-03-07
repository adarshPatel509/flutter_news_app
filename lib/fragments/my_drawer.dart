import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text("NEWS APP"),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/news.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            ListTile(
              title: Text("LATEST"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/latest');
              },
            ),
            ListTile(
              title: Text("WORLD"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/world');
              },
            ),
            ListTile(
              title: Text("INDIA"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/india');
              },
            ),
            ListTile(
              title: Text("TECH"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/tech');
              },
            )
          ],
        ),
      ),
    );
  }
}
