import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

import 'GeneralTest.dart';
class Learning extends StatefulWidget {
  const Learning({super.key});

  @override
  State<Learning> createState() => _LearningState();
}

class _LearningState extends State<Learning> {
  final player = AudioCache();
  Color _containerColor=Colors.grey;
  Color _textColor=Colors.black;
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('HOW ARE YOU?', style: TextStyle(fontSize: 30,
    color: Colors.white),
    ),centerTitle: true,
        backgroundColor: Colors.blue),
      body:
        Row(children: [
          buildButton(),
        buildButton(),
        ],)



      );


  }
}
class buildButton extends StatefulWidget {

  const buildButton({super.key});

  @override
  State<buildButton> createState() => _buildButtonState();
}

class _buildButtonState extends State<buildButton> {
  Color _containerColor=Colors.grey;
  Color _textColor=Colors.black;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(child:
      Container(height: 150,width: 150, color: _containerColor,
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

        });
      },
    );
  }
}

