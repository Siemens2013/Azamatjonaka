import 'package:flutter/material.dart';
class JustForTest extends StatefulWidget {
  final String appbartxt;
  const JustForTest({super.key, required this.appbartxt});

  @override
  State<JustForTest> createState() => _JustForTestState();
}

class _JustForTestState extends State<JustForTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text(widget.appbartxt,  textAlign: TextAlign.center,
      style: TextStyle(fontSize: 20, color: Colors.white),),
      centerTitle: true, backgroundColor: Colors.lightBlueAccent,),

        body: ListView(
    children: const <Widget>[
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
    ),
              ListTile(
                leading: Icon(Icons.photo_album),
                 title: Text('Album'),
    ),
            ListTile(
                leading: Icon(Icons.phone),
              title: Text('Phone'),
    ),
    ],

        ),
    );
  }
}
