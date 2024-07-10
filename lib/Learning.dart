import 'package:flutter/material.dart';

import 'GeneralTest.dart';
class Learning extends StatefulWidget {
  const Learning({super.key});

  @override
  State<Learning> createState() => _LearningState();
}

class _LearningState extends State<Learning> {
  Color _containerColor=Colors.grey;
  Color _textColor=Colors.black;
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('HOW ARE YOU?', style: TextStyle(fontSize: 30,
    color: Colors.white),
    ),centerTitle: true,
        backgroundColor: Colors.blue),
      body: Row(
        children: [ SizedBox(width: 50),
          Center(child: GestureDetector(
            child: Container(height: 150,width: 150, color: _containerColor,
              child: Center(child: Text('CLICK', style: TextStyle(fontSize: 38, color: _textColor))),
            ),
            onTap: (){
              setState(() {

                _containerColor = _containerColor == Colors.red ?
                Colors.blue :
                Colors.red;
                _textColor=_containerColor==Colors.red ?
                    Colors.black:
                    Colors.white;
                Future.delayed(const Duration(milliseconds: 3300), (){

                  setState(() {
                    Navigator.push(
                      context,

                      MaterialPageRoute(builder: (context) =>  GeneralTest(jsonChoice: 'assets/Math.json',
                        appbartxt: 'MATEMATIKA1',)),
                    );
                  });
                }
                );
              });
            },
          ),
          ),
        SizedBox(width: 50),
        Container(height: 150, width: 150,color: Colors.red)
        ],
      ),

    );
  }
}
