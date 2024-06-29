import 'package:flutter/material.dart';
class MyContains extends StatelessWidget {
  final String child;
  final int uzunlik;
  const MyContains({required this.child, required this.uzunlik});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [SizedBox(height: 28),
        Center(
          child:

          GestureDetector(
            child: Container(height: 55,width: 138,color: Colors.green, child: Center(child: Text(child,
              style: TextStyle(fontSize: 16, color: Colors.white),),),
            ),
            onTap: (){print(uzunlik);},
          ),
        ),
      ],
    );

  }
}
