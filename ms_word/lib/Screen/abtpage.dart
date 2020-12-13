import 'package:flutter/material.dart';

class AboutPg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Text(
              "This app contains the information regarding the shortcut key that are used in Microsoft Word \n Version 1.0"),
        ),
      ),
    );
  }
}
