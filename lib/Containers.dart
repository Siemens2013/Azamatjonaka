import 'package:flutter/material.dart';
import 'package:untitled1/GeneralTest.dart';
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
            onTap: () {print(uzunlik);
            if (uzunlik==0) {
              Navigator.push(
                context,

                MaterialPageRoute(builder: (context) =>  GeneralTest(jsonChoice: 'assets/Math.json',
                  appbartxt: 'MATEMATIKA1',)),
              );
            }
            else if (uzunlik==1) {
              Navigator.push(
                  context,
              MaterialPageRoute(builder: (context) =>  GeneralTest(jsonChoice: 'assets/toshkent.json',
                appbartxt: 'HISTORY',)),
              );
            }
            },
          ),
        ),
      ],
    );

  }
}
