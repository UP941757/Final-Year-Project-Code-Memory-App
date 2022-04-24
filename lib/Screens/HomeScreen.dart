import "package:flutter/material.dart";
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


  @override
  Widget build(BuildContext context) {
    speak1() async {
      await flutterTts.speak("Tile Matcher");
    }
    speak2() async{
      await flutterTts.speak("Pattern Recognition");
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(60.0),
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
                              fontSize: 12,
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
                    padding: const EdgeInsets.all(60.0),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      image: DecorationImage(
                          image: AssetImage('assets/images/PatternRecog.jpg'),
                          fit: BoxFit.cover
                      ),
                    ) ,
                    child: Text(
                        "Pattern Recognition",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 12,
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
                            onPressed: () => speak2(),
                            child: Icon(Icons.volume_up_rounded)
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Column(

              ),
              Row(
                children: <Widget>[
                  Column(


                  ),
                  Column(

                  ),
                  Column(

                  )
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
