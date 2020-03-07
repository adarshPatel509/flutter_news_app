import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:url_launcher/url_launcher.dart';
import '../fragments/my_drawer.dart';
import 'dart:convert';

class LatestNews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Trending Now"),
      ),
      drawer: MyDrawer(),
      body: Feeds(category: "latest")
    );
  }
}

class Feeds extends StatefulWidget {
  Feeds({Key key, this.category}) : super(key: key);
  final String category;
  
  @override 
  FeedsState createState() => FeedsState();
  
}

class FeedsState extends State<Feeds> {
  bool isLoading = true;
  var articles;


  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _fetchNews());
  } 

  _fetchNews() async {
    print("fetching...");
    print(widget.category);
    String url = "http://newsapi.org/v2/everything?q=bitcoin&from=2020-02-07&sortBy=publishedAt&apiKey=9e661fe93d2341288598cdc7dcf28248";
    Map<String, String> headers = {
      "Content-type": "application/json",
    };

    Response response = await get(url, headers: headers);
    var res = jsonDecode(response.body);
    if (res['status'] == "ok") {
      setState(() {
        isLoading = false;
        articles = res['articles'];
      });
    }
  }
  
  _launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }


  _articleRows(index) {
    var data = articles[index];
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: 44,
                minHeight: 44,
                maxWidth: 64,
                maxHeight: 64,
              ),
              child: Image.network(data['urlToImage'], fit: BoxFit.cover),
            ),
            title: Text("${data['title']}"),
          ),
          FlatButton(
            child: const Text('Read More'),
            textColor: Colors.greenAccent,
            onPressed: () {_launchUrl(data['url']);},
          ),
        ],
      )
    );
  }

  @override
   Widget build(BuildContext context) {
    if (isLoading) {
      return Center(
        child: CircularProgressIndicator(),
      );
    } else {
      return ListView.builder(
        itemCount: articles.length,
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context, i) {
          return _articleRows(i);
        },
      );
    }
  }
}