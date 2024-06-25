import 'dart:convert';
import 'dart:ffi';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled1/knopka.dart';
void main()=>runApp(const MaterialApp(

  home: mainPage(),
  //Azamat(),
)
);
class mainPage extends StatefulWidget {
  const mainPage({super.key});

  @override
  State<mainPage> createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('CHOOSE THE SUBJECT', style: TextStyle(color: Colors.white)
        ,), centerTitle: true, backgroundColor: Colors.blue,),
      backgroundColor: Colors.white60,
      body: Padding(
        padding: const EdgeInsets.all(64.0),
        child: Center(
          child: Column(children: [
            Container(height: 55,width: 138,color: Colors.blue, child: Center(child: Text("MATHEMATICS",
            style: TextStyle(fontSize: 16, color: Colors.white),)),
            ),
            SizedBox(height: 35),
            Container(height: 55,width: 138,color: Colors.blue, child: Center(child: Text("HISTORY",
              style: TextStyle(fontSize: 16, color: Colors.white),)),),
            SizedBox(height: 35),
            Container(height: 55,width: 138,color: Colors.blue, child: Center(child: Text("RESERVE 1",
              style: TextStyle(fontSize: 16, color: Colors.white),)),),
            SizedBox(height: 35),
            Container(height: 55,width: 138,color: Colors.blue, child: Center(child: Text("RESERVE 2",
              style: TextStyle(fontSize: 16, color: Colors.white),)),),
            SizedBox(height: 35),
            Container(height: 55,width: 138,color: Colors.blue, child: Center(child: Text("RESERVE 3",
              style: TextStyle(fontSize: 16, color: Colors.white),)),),
            SizedBox(height: 35),
            Container(height: 55,width: 138,color: Colors.blue, child: Center(child: Text("RESERVE 4",
              style: TextStyle(fontSize: 16, color: Colors.white),)),),
          ],),
        ),
      ),
    );
  }
}

