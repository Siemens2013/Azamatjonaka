import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  final int good;
  final int bad;
  const ResultScreen({super.key, required this.bad, required this.good});

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
          Text('GOOD     ${widget.good}', style: TextStyle(fontSize: 32),),
          SizedBox(height: 25),
          Text('BAD      ${widget.bad}', style: TextStyle(fontSize: 32),)
        ],
      ),
    ),




    );
  }
}
