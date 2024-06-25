import 'dart:convert';
import 'dart:ffi';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled1/knopka.dart';
void main()=>runApp(const MaterialApp(

  home: mainPage(),
  //Azamat(),
)
);
class mainPage extends StatefulWidget {
  //String jsonChoice;
  const mainPage({super.key});

  @override
  State<mainPage> createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(85.0),
        child: Center(
          child: Column(
            children: [
              Text('This is a main page!', style: TextStyle(fontSize: 24),),
              SizedBox(height: 24),
              ElevatedButton(onPressed: (){ Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Azamat(jsonChoice: 'assets/Image/Toshkent1.json', appbartxt: 'Historical Question',)),
              );
                }, child: Text('HISTORY')),
              SizedBox(height: 24),
              ElevatedButton(onPressed: (){ Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Azamat(jsonChoice: 'assets/Math.json', appbartxt: 'Math',)),
              );
              }, child: Text('Mathematic')),


            ],
          ),
        ),
      ),
    );
  }
}

class Azamat extends StatefulWidget {
  final String jsonChoice;
  final String appbartxt;

  const Azamat({super.key, required this.jsonChoice, required this.appbartxt});
  @override
  State<Azamat> createState() => _AzamatState();
}
class _AzamatState extends State<Azamat> {
  List _elements=[];
  bool isPressed=false, flag=false;
  int i=0;
  Future <void> readJason() async {
    final String response = await rootBundle.loadString(widget.jsonChoice);
    final data = await json.decode(response);
    setState(() {
      _elements=data["items"];  print(i);
    });
  }
  @override
  void initState() {
    readJason();
    super.initState();
  }
    @override
  Widget build(BuildContext context) {
    if (_elements.isEmpty) return Text('IT IS EMPTY NOW');
    return Scaffold(appBar: AppBar(title: Text(widget.appbartxt,
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 28, color: Colors.black),),
      centerTitle: true, backgroundColor: Colors.lightBlueAccent,),
      body: Center(
        child: Column(children: [
          Text(_elements[i]['title'],
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 28),),
          SizedBox(height: 2),
          Image(image: AssetImage(_elements[i]['imagePath']),height: 350,width: 350),
          Row(children: [
            Knopka(choice:_elements[i]['choices'][0], choiceIndex: 0, correctChoice:_elements[i]['correctChoice']),
            Knopka(choice:_elements[i]['choices'][1],choiceIndex: 1, correctChoice:_elements[i]['correctChoice']),
          ],),
          Row(children: [
            Knopka(choice:_elements[i]['choices'][2],choiceIndex: 2, correctChoice:_elements[i]['correctChoice']),
            Knopka(choice:_elements[i]['choices'][3],choiceIndex: 3, correctChoice:_elements[i]['correctChoice']),
          ],),
            SizedBox(height: 24),
            ElevatedButton( style: ElevatedButton.styleFrom(backgroundColor:
                  isPressed?Colors.black:Colors.blue,
                  shape: CircleBorder(side: BorderSide(width:2),eccentricity: 1)) ,
                  onPressed: ( ){

                      setState(() {
                          print("WE HAVE MORE QUESTIONS: $i");print(isCorrected_G);
                                           if (i <= _elements.length - 2 ) {
                                                i++;
                                                flag=true;
                                              isCorrected_G= false;
                                              pressed_G = false;
                                            } else  {
                                             flag = true;
                                             isCorrected_G = false;
                                             pressed_G = false;
                                             Navigator.push(
                                               context,
                                               MaterialPageRoute(builder: (
                                                   context) => const Itog()),
                                             );

                    }                    });
                    }, child: Text('SUBMIT    >>', style: TextStyle(fontSize: 36),)),
          ElevatedButton(onPressed: (){}, child: Text('Enable/Disable')),
          ElevatedButton(onPressed: null, child: Text('Enable/Disable')),

                   ],
                              ),
                              ),
                              );
                              }
                  }
  class Itog extends StatelessWidget {
  const Itog({super.key});
  @override
  Widget build(BuildContext context) {
  return Scaffold(body:
  Center(child: Column(
  children: [
  Padding(
  padding: const EdgeInsets.all(21.0),
  child: Text('Your score is excellent',
  style: TextStyle(fontSize: 36, fontWeight: FontWeight.w700),),
  ),
  Padding(
  padding: const EdgeInsets.all(24.0),
  child: ElevatedButton(onPressed: (){
  Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => const mainPage()),
  );

  }, child: Text('BACK'),
  style: ElevatedButton.styleFrom(backgroundColor: Colors.yellowAccent),
  ),
  )
  ],
  )
  ),

  );
  }
  }


