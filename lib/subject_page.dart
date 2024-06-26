import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled1/Math.dart';
import 'package:untitled1/JustForTest.dart';
class SubjectPage extends StatefulWidget {
  const SubjectPage({super.key});
  @override
  State<SubjectPage> createState() => _SubjectPageState();
}
class _SubjectPageState extends State<SubjectPage> {
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
            GestureDetector(onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Math(appbartxt: 'MATHEMATIC TEST',)),
              );
            },
              child: Container(height: 55,width: 138,color: Colors.blue, child: Center(child: Text("MATHEMATICS",
                style: TextStyle(fontSize: 16, color: Colors.white),)),
              ),
            ),
            SizedBox(height: 35),
            GestureDetector(onTap: (){
              Navigator.push(
                context,

                MaterialPageRoute(builder: (context) => const Math(appbartxt: 'HISTORICAL TEST',)),
              );
            },
              child: Container(height: 55,width: 138,color: Colors.blue, child: Center(child: Text("HISTORY",
                style: TextStyle(fontSize: 16, color: Colors.white),)),),
            ),
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
            SizedBox(height: 25),
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,

                  MaterialPageRoute(builder: (context) => const JustForTest(appbartxt: 'just for test, will be deleted soon',)),
                );
              },
              child: Container( height: 55,width: 138,color: Colors.blue, child:
              Center(child: Text("push",
                style: TextStyle(fontSize: 16, color: Colors.white),   )),
              ),
            ),
          ],),
        ),
      ),
    );
  }
}

