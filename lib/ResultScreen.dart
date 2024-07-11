import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {

  const ResultScreen({super.key});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('RESULT SCREEN'), backgroundColor: Colors.blue,
    centerTitle: true,
    ),


    body: Center(
      child: Column(
        children: [SizedBox(height: 55),
          Text(' I AM HAPPY', style: TextStyle(fontSize: 32),),
          SizedBox(height: 25),
          Text('YOU DID GREAT  JOB !!!', style: TextStyle(fontSize: 32),)
        ],
      ),
    ),




    );
  }
}
