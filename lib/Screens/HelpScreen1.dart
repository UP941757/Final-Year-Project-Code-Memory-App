import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:memorygame/Screens/GameScreen.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:memorygame/Screens/HomeScreen.dart';


class HelpScreen extends StatefulWidget{


  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  final FlutterTts flutterTts = FlutterTts();



  bool isBold = false;

  @override
  Widget build(BuildContext context) {
    speak() async {
      await flutterTts.speak("Find the");
    }
    return MaterialApp(
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
              icon: Icon(Icons.arrow_back_outlined),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen())
                );
              }),
          elevation: 0,
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/TileMatchBackground.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Text(
                "Tile Matcher",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    fontStyle: FontStyle.italic
                ),
              ),
              Container(
                padding: const EdgeInsets.all(100.0),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  color: Colors.lightBlueAccent,
                ) ,
                child: Text(
                    "yo",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: isBold ? FontWeight.bold: FontWeight.normal,
                    )
                ),
              ),
                ElevatedButton(
                    onPressed: () => speak(),
                  child: Icon(Icons.volume_up_rounded),
                ),
              TextButton(
                  onPressed: () => setState(() => isBold = !isBold ),
                  child: const Text("Bold")
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => GameScreen())
                        );
                      },
                      child: Text("Easy")
                  ),
                  ElevatedButton(
                      onPressed: () {

                      },
                      child: Text("Medium")
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      child: Text("Hard")
                  ),
                ],
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.purple,
          child: Row(
            children: [
              IconButton(icon: Icon(Icons.more_vert), onPressed: () {},)
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
      ),
    );
  }
}