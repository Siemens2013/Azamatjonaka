import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'ResultScreen.dart';
import 'package:audioplayers/audioplayers.dart';
class GeneralTest_test extends StatefulWidget {
  final String appbartxt;
  final String jsonChoice;
  const GeneralTest_test({super.key, required this.jsonChoice, required this.appbartxt});
  @override
  State<GeneralTest_test> createState() => _GeneralTest_testState();
}

class _GeneralTest_testState extends State<GeneralTest_test> {
  List _elements=[];
  int a=0;

  int i=0;
  bool _isPressed=false;
  Future <void> readJason() async {
    final String response = await rootBundle.loadString(widget.jsonChoice);
    final data = await json.decode(response);
    setState(() {
      _elements = data["items"];
    });
  }
  Color _myContainerColor0=Colors.white60;
  Color _myContainerColor1=Colors.white60;
  Color _myContainerColor2=Colors.white60;
  Color _myContainerColor3=Colors.white60;
  final player = AudioCache();

 Widget customButton(Color containerColor,int aValue){
   return GestureDetector(
     child: Container(height: 100,width: 110, color: containerColor,child: Center(
       child: Padding(
         padding: const EdgeInsets.all(8.0),
         child: Text(_elements[i]['choices'][aValue],

           textAlign: TextAlign.center,
           style: TextStyle(fontSize: 28, color: Colors.black),),
       ),
     ),

     ),
     onTap: (){ a=aValue;
     setState(() {
       increment_i();
     });
     },
   );

 }

  void increment_i(){
    setState(() {
      if (_elements.length- 1== i){
        if (a==_elements[i] ['correctChoice']){if (a==0) {_myContainerColor0=Colors.green;_myContainerColor1=Colors.red;_myContainerColor2=Colors.red;_myContainerColor3=Colors.red;}
        else {if (a==1) {_myContainerColor0=Colors.red;_myContainerColor1=Colors.green;_myContainerColor2=Colors.red;_myContainerColor3=Colors.red;}}
        if (a==2){_myContainerColor0=Colors.red;_myContainerColor1=Colors.red;_myContainerColor2=Colors.green;_myContainerColor3=Colors.red;}
        else {if (a==3){_myContainerColor0=Colors.red;_myContainerColor1=Colors.red;_myContainerColor2=Colors.red;_myContainerColor3=Colors.green;}}

         _isPressed=true;
        final player = AudioPlayer();  player.play(AssetSource('loop-file-positive-and-gentle-piano-song-157353.mp3'));
        player.play(AssetSource('correct-156911.mp3'));} else {if (a==0) {_myContainerColor0=Colors.red;}
        if (a==1){_myContainerColor1=Colors.red;}
        if (a==2) {_myContainerColor2=Colors.red;}
        if (a==3){_myContainerColor3=Colors.red;}
         _isPressed=false;
        final player = AudioPlayer();
        player.play(AssetSource('error-10-206498.mp3'));}

        if(_isPressed==true){

        Navigator.push(
        context,
        MaterialPageRoute(builder: (context) =>  ResultScreen()),

      );}
      } else {if (a==_elements[i] ['correctChoice']){

                      if (a==0) {_myContainerColor0=Colors.green;_myContainerColor1=Colors.red;_myContainerColor2=Colors.red;_myContainerColor3=Colors.red;}
                          else {if (a==1) {_myContainerColor0=Colors.red;_myContainerColor1=Colors.green;_myContainerColor2=Colors.red;_myContainerColor3=Colors.red;}}
                                if (a==2){_myContainerColor0=Colors.red;_myContainerColor1=Colors.red;_myContainerColor2=Colors.green;_myContainerColor3=Colors.red;}
                                    else {if (a==3){_myContainerColor0=Colors.red;_myContainerColor1=Colors.red;_myContainerColor2=Colors.red;_myContainerColor3=Colors.green;}}

                       _isPressed=true;
                      final player = AudioPlayer();
                      player.play(AssetSource('correct-156911.mp3'));} else {
                                    if (a==0) {_myContainerColor0=Colors.red;}
                                    if (a==1){_myContainerColor1=Colors.red;}
                                    if (a==2) {_myContainerColor2=Colors.red;}
                                    if (a==3){_myContainerColor3=Colors.red;}
                                       _isPressed=false;
                                    final player = AudioPlayer();
                                    player.play(AssetSource('error-10-206498.mp3'));
                                                            }
      if (_isPressed==true) {print('hhhhhhhhhh    $i');
        Future.delayed(const Duration(milliseconds: 2000), () {
          setState(() {
            _myContainerColor0 = Colors.white60;
            _myContainerColor1 = Colors.white60;
            _myContainerColor2 = Colors.white60;
            _myContainerColor3 = Colors.white60;
            //i++;
          });
        });
        i++;
      }
      }
    }
    );
  }
  @override
  void initState() {
    readJason();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    if (_elements.isEmpty ) {
      return Container();
    }

    return Scaffold( appBar: AppBar(title: Text(widget.appbartxt, style: TextStyle(color: Colors.white)
      ,), centerTitle: true, backgroundColor: Colors.blue,),
      backgroundColor: Colors.white60,
      body: Center(
        child: Column(children: [SizedBox(height: 25),
          Container(height: 200,width: 355, color: Colors.blue,
            child: Center(child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(_elements[i]['title'],style: TextStyle(fontSize: 28,
              color: Colors.white),),
            )),),
            Padding(
              padding: const EdgeInsets.all(34.0),
              child: Row(
                children: [
                  customButton(_myContainerColor0, 0),
                  SizedBox(width: 120),
                  customButton(_myContainerColor1, 1),
                ],
              ),
            ),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Row(
              children: [
                customButton(_myContainerColor2,2),
                SizedBox(width: 120),
                customButton(_myContainerColor3, 3)
              ],
            ),
          ),
        ],),
      )
    );
  }
}


