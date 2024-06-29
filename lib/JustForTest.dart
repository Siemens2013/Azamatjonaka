import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled1/Containers.dart';
class JustForTest extends StatefulWidget {
  final String appbartxt;
  final String jsonChoice;

  JustForTest({super.key, required this.appbartxt, required this.jsonChoice});

  @override
  State<JustForTest> createState() => _JustForTestState();
}

class _JustForTestState extends State<JustForTest> {
//final List _posts1=[ '1','2','Uchinchi','Tortinchi','Beshinchi','Oltinchi','Ettinchi'];
  List _elements=[];
    int i=0;
  Future <void> readJason() async {
    final String response = await rootBundle.loadString(widget.jsonChoice);
    final data = await json.decode(response);
    setState(() {
      _elements=data["items"];  print(i);
      print(_elements);
    });
  }

  @override
  void initState() {

    readJason();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text(widget.appbartxt,  textAlign: TextAlign.center,
      style: TextStyle(fontSize: 20, color: Colors.white),),
      centerTitle: true, backgroundColor: Colors.lightBlueAccent,),
        body:
             ListView.builder(itemCount: _elements.length, itemBuilder: (context, index) {
               return MyContains(child: _elements[index]['choices'][0], uzunlik: index);
             })

                    );
  }
}
