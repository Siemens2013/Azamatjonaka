import 'package:flutter/material.dart';
import 'package:untitled1/subject_page.dart';
class Math extends StatefulWidget {
 // final String jsonChoice;
  final String appbartxt;
  const Math({super.key, required this.appbartxt});

  @override
  State<Math> createState() => _MathState();
}

class _MathState extends State<Math> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text(widget.appbartxt,  textAlign: TextAlign.center,
      style: TextStyle(fontSize: 24, color: Colors.white),),
      centerTitle: true, backgroundColor: Colors.lightBlueAccent,),);
  }
}
