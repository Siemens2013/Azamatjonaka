import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
class GeneralTest extends StatefulWidget {
  final String appbartxt;
  final String jsonChoice;
  //int a,b,c,d;
  const GeneralTest({super.key, required this.jsonChoice, required this.appbartxt});

  @override
  State<GeneralTest> createState() => _GeneralTestState();
}

class _GeneralTestState extends State<GeneralTest> {
  List _elements=[];
  int a=0;
  int b=0;
  int c=0;
  int d=0;
    int i=0;
  Future <void> readJason() async {
    final String response = await rootBundle.loadString(widget.jsonChoice);
    final data = await json.decode(response);
    setState(() {
      _elements = data["items"];
      print(i);
    });
  }
  @override
  void initState() {
    readJason();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(title: Text(widget.appbartxt, style: TextStyle(color: Colors.white)
      ,), centerTitle: true, backgroundColor: Colors.blue,),
      backgroundColor: Colors.white60,
      body: Center(
        child: Column(children: [SizedBox(height: 25),
          Container(height: 200,width: 355, color: Colors.blue,
            child: Center(child: Text(_elements[i]['title'],style: TextStyle(fontSize: 28,
            color: Colors.white),)),),
            Padding(
              padding: const EdgeInsets.all(34.0),
              child: Row(
                children: [

                  GestureDetector(
                    child: Container(height: 100,width: 110, color: Colors.white,child: Center(
                      child: Text(_elements[i]['choices'][0],

                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 28, color: Colors.black),),
                    ),
                    ),
                    onTap: (){ a=1; print(a);
                      setState(() {
                        i++;
                      });
                    },
                  ),

                    SizedBox(width: 120),
                  GestureDetector(
                    child: Container(height: 100,width: 110, color: Colors.white,child: Center(
                      child: Text(_elements[i]['choices'][1],
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 28, color: Colors.black),),
                    ),),
                    onTap: (){b=2;print(b);
                    setState(() {
                      i++;
                    });
                    },
                  ),
                ],
              ),
            ),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Row(
              children: [

                GestureDetector(
                  child: Container(height: 100,width: 110, color: Colors.white,child: Center(
                    child: Text(_elements[i]['choices'][2],
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 28, color: Colors.black),),
                  ),),
                onTap: (){c=3;print(c);
                   setState(() {
                     i++;
                   });
                },
                ),
                  SizedBox(width: 120),
                GestureDetector(
                  child: Container(height: 100,width: 110, color: Colors.white,child: Center(
                    child: Text(_elements[i]['choices'][3],
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 28, color: Colors.black),),
                  ),),
                  onTap: (){d=4;print(d);
                    setState(() {
                      i++;
                    });
                  },
                ),
              ],
            ),
          ),
        ],),
      )
    );
  }
}
