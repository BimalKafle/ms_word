import 'package:flutter/material.dart';
import '../data/data.dart';
import 'abtpage.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share/share.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: Container(
                color: Colors.orangeAccent,
                child: Center(
                  child: Text("Ms-Word",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return AboutPg();
                }));
              },
              leading: Icon(Icons.info_outline),
              title: Text("Information"),
            ),
            ListTile(
              onTap: () {
                launch("https://youtube.com");
              },
              leading: Icon(Icons.star),
              title: Text("Rate"),
            ),
            ListTile(
              onTap: () {
                Share.share("Download this app");
              },
              leading: Icon(Icons.share),
              title: Text("Share"),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Ms Word Guide"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.info_outline),
            iconSize: 26.0,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return AboutPg();
              }));
            },
          ),
        ],
      ),
      body: ListView.separated(
          separatorBuilder: (context, index) {
            return Divider(
              thickness: 3.0,
            );
          },
          itemCount: data.length,
          itemBuilder: (context, index) {
            int num = index;
            num = num + 1;
            return ListTile(
              leading: CircleAvatar(
                radius: 25.0,
                backgroundColor: Colors.orangeAccent,
                child: Text(
                  num.toString(),
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              title: Text(data[index]['key']),
              subtitle: Text(data[index]['use']),
            );
          }),
    );
  }
}
