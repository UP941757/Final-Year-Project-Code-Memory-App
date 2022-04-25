import "package:flutter/material.dart";
import 'package:flutter/rendering.dart';
import 'package:memorygame/Screens/HelpScreen1.dart';
import 'package:flutter_tts/flutter_tts.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final FlutterTts flutterTts = FlutterTts();

  bool isBold = false;
  var textSize = 12;


  @override
  Widget build(BuildContext context) {
    speak1() async {
      await flutterTts.speak("Tile Matcher");
    }
    speak2() async{
      await flutterTts.speak("Pattern Recognition");
    }
    speak3() async{
      await flutterTts.speak("Coming Soon");
    }
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title:Text(
              "Weekly Games",
          ),
            titleTextStyle: TextStyle(
              fontWeight: isBold ? FontWeight.bold: FontWeight.normal,
              color: Colors.black,
              fontSize: 35
            ),
        ),
        body:
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.lightBlueAccent,
                Colors.white60
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            )
          ),
          child:
          Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(40.0),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          image: DecorationImage(
                            image: AssetImage('assets/images/TileMatchBackground.jpg'),
                            fit: BoxFit.cover
                          ),
                        ) ,
                        child: Text(
                            "Tile Matcher",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: textSize + 1,
                              fontWeight: isBold ? FontWeight.bold: FontWeight.normal,
                            )
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Tooltip(
                            message: "(Error 400) Tap button once",
                            showDuration: const Duration(seconds: 2),
                            waitDuration: const Duration(seconds: 1),
                            child: ElevatedButton(
                              onPressed: (){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => HelpScreen())
                                );
                              },
                              child: Icon(Icons.arrow_right),
                            ),
                          ),
                          Tooltip(
                            message: "(Error 400) Tap button once",
                            showDuration: const Duration(seconds: 2),
                            waitDuration: const Duration(seconds: 1),
                          child:ElevatedButton(
                              onPressed: () => speak1(),
                              child: Icon(Icons.volume_up_rounded)
                          ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(60.0),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          image: DecorationImage(
                              image: AssetImage('assets/images/PatternR.jpg'),
                              fit: BoxFit.cover
                          ),
                        ) ,
                        child: Text(
                            "Pattern Recognition",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: textSize + 2,
                              fontWeight: isBold ? FontWeight.bold: FontWeight.normal,
                            )
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Tooltip(
                            message: "(Error 400) Tap button once",
                            showDuration: const Duration(seconds: 2),
                            waitDuration: const Duration(seconds: 1),
                            child: ElevatedButton(
                              onPressed: (){
                              },
                              child: Icon(Icons.arrow_right),
                            ),
                          ),
                          Tooltip(
                            message: "(Error 400) Tap button once",
                            showDuration: const Duration(seconds: 2),
                            waitDuration: const Duration(seconds: 1),
                            child:ElevatedButton(
                                onPressed: () => speak2(),
                                child: Icon(Icons.volume_up_rounded)
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Column(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(40.0),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20.0)),
                            color: Colors.white30
                          ) ,
                          child: Text(
                              "Coming Soon",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: textSize + 2,
                                fontWeight: isBold ? FontWeight.bold: FontWeight.normal,
                              )
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Tooltip(
                              message: "(Error 400) Tap button once",
                              showDuration: const Duration(seconds: 2),
                              waitDuration: const Duration(seconds: 1),
                              child: ElevatedButton(
                                onPressed: (){
                                },
                                child: Icon(Icons.arrow_right),
                              ),
                            ),
                            Tooltip(
                              message: "(Error 400) Tap button once",
                              showDuration: const Duration(seconds: 2),
                              waitDuration: const Duration(seconds: 1),
                              child:ElevatedButton(
                                  onPressed: () => speak3(),
                                  child: Icon(Icons.volume_up_rounded)
                              ),
                            ),
                          ],
                        )
                      ]
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      padding: const EdgeInsets.all(30.0),
                      child: Text(
                          "Daily Games",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: isBold ? FontWeight.bold: FontWeight.normal,
                          )
                      ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.all(30.0),
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20.0)),
                              image: DecorationImage(
                                  image: AssetImage('assets/images/TileMatchBackground.jpg'),
                                  fit: BoxFit.cover
                              ),
                            ) ,
                            child: Text(
                                "Tile Matcher",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: textSize + 1,
                                  fontWeight: isBold ? FontWeight.bold: FontWeight.normal,
                                )
                            ),
                          ),
                           Row(
                            children: <Widget>[
                              Tooltip(
                                message: "(Error 400) Tap button once",
                                showDuration: const Duration(seconds: 2),
                                waitDuration: const Duration(seconds: 1),
                                child: ElevatedButton(
                                  onPressed: (){
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => HelpScreen())
                                    );
                                  },
                                  child: Icon(Icons.arrow_right),
                                ),
                              ),
                              Tooltip(
                                message: "(Error 400) Tap button once",
                                showDuration: const Duration(seconds: 2),
                                waitDuration: const Duration(seconds: 1),
                                child:ElevatedButton(
                                    onPressed: () => speak1(),
                                    child: Icon(Icons.volume_up_rounded)
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  Column(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(30.0),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20.0)),
                            color: Colors.white30
                          ) ,
                          child: Text(
                              "Coming Soon",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: textSize + 1,
                                fontWeight: isBold ? FontWeight.bold: FontWeight.normal,
                              )
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Tooltip(
                              message: "(Error 400) Tap button once",
                              showDuration: const Duration(seconds: 2),
                              waitDuration: const Duration(seconds: 1),
                              child: ElevatedButton(
                                onPressed: (){
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => HelpScreen())
                                  );
                                },
                                child: Icon(Icons.arrow_right),
                              ),
                            ),
                            Tooltip(
                              message: "(Error 400) Tap button once",
                              showDuration: const Duration(seconds: 2),
                              waitDuration: const Duration(seconds: 1),
                              child:ElevatedButton(
                                  onPressed: () => speak3(),
                                  child: Icon(Icons.volume_up_rounded)
                              ),
                            ),
                          ],
                        )
                      ]
                  ),
                ]
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
        color: Colors.purple,
        child: Row(
          children: [
            IconButton(icon: Icon(Icons.more_vert), onPressed: () {},),
            TextButton(
                onPressed: () => setState(() => isBold = !isBold ),
                child: const Text("Bold")
            ),
            TextButton(
                onPressed: () {
                  textSize = textSize + 1;
                  setState(() {
                  });
                  if(textSize >20){
                    textSize = 12;
                  }
                },
                child: Text("Enlarge")
            )
          ],
        ),
      ),
      floatingActionButton:
      FloatingActionButton(child: Icon(Icons.home), onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen())
        );
      },
      ),
      floatingActionButtonLocation:
      FloatingActionButtonLocation.centerDocked,
      )
    );
  }
}
