import 'dart:ui';

import 'package:flutter/material.dart';

bool pressed_G=false, isCorrected_G=false;
bool flag_G=false;
class Knopka extends StatefulWidget {
final String choice;
final int choiceIndex, correctChoice;
  const Knopka({super.key, required this.choice,
    required this.choiceIndex, required this.correctChoice});
  @override
  State<Knopka> createState() => _KnopkaState();
}
class _KnopkaState extends State<Knopka> {
  Color determineColor(){
    pressed=pressed_G;
    isCorrected=isCorrected_G;
    if (pressed==false){
      return Colors.white;
    }else if(pressed==true && isCorrected==true) {
      return Colors.green;
    } else {
      return Colors.red;
    }
  }
  bool pressed=false, isCorrected=false;
  @override
  Widget build(BuildContext context) {
  return Expanded(
      child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: ElevatedButton(style: ElevatedButton.styleFrom(
              backgroundColor: determineColor(),
                     ),
            onPressed: (){print(widget.choiceIndex);

             if (widget.correctChoice==widget.choiceIndex) {
               setState(() {
                 pressed=true;
                 isCorrected=true;
                 pressed_G=pressed;
                 isCorrected_G=isCorrected;
               });
               print('RIGHT');}else
               {
                 setState(() {flag_G=true;
                   pressed=true;
                   isCorrected=false;
                   pressed_G=pressed;
                   isCorrected_G=isCorrected;
                 });

                 print('WRONG');}
                          },
            child: Text(widget.choice, style: TextStyle(fontSize: 26),),)
      ),
    );
  }
}
