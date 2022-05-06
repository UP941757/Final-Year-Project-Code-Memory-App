import 'dart:async';

import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:memorygame/Screens/HelpScreen1.dart';
import 'package:memorygame/Screens/HomeScreen.dart';


class GameScreen2 extends StatefulWidget{
  const GameScreen2({Key? key}) : super(key: key);

  @override
  GameScreen2State createState() => GameScreen2State();
}

class GameScreen2State extends State<GameScreen2>{
  List<GlobalKey<FlipCardState>> cardStateKeys = [
    GlobalKey<FlipCardState>(),
    GlobalKey<FlipCardState>(),
    GlobalKey<FlipCardState>(),
    GlobalKey<FlipCardState>(),
    GlobalKey<FlipCardState>(),
    GlobalKey<FlipCardState>(),
    GlobalKey<FlipCardState>(),
    GlobalKey<FlipCardState>(),
    GlobalKey<FlipCardState>(),
    GlobalKey<FlipCardState>(),
  ];
  List<bool> cardFlips = [true,true,true,true,true,true,true,true,true,true,true,true,true,true];
  List<String> data = ["1","1","2","2","3","3","4","4","5","5","6","6"];
  int previousIndex = -1;
  bool flip = false;



  int time = 60;
  late Timer timer;
  startTimer(){
    timer = Timer.periodic(Duration(seconds:1),(t){
      setState(() {
        time = time - 1;
      });
    });
  }

  @override
  void initState(){
    super.initState();
    startTimer();
    data.shuffle();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
            icon: Icon(Icons.arrow_back_outlined),
            color: Colors.lightBlueAccent,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HelpScreen())
              );
            }),
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "$time",
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ),
              Theme(
                data: ThemeData.dark(),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                    ),
                    itemBuilder: (context,index)=>FlipCard(
                        key: cardStateKeys[index],
                        onFlip: (){
                          if(!flip){
                            flip = true;
                            previousIndex = index;
                          }else{
                            flip = false;
                            if(previousIndex != index){
                              if(data[previousIndex] != data[index]){
                                cardStateKeys[previousIndex]
                                    .currentState
                                    ?.toggleCard();
                                previousIndex = index;
                              }else{
                                cardFlips[previousIndex] = false;
                                cardFlips[index] = false;
                                print("Found Match");
                              }
                            }
                          }
                        },
                        direction: FlipDirection.HORIZONTAL,
                        flipOnTouch: cardFlips[index],
                        front: Container(margin: EdgeInsets.all(4.0),
                          color: Colors.deepPurple.withOpacity(0.3),
                        ),
                        back: Container(
                          margin: EdgeInsets.all(4.0),
                          color: Colors.deepPurple,
                          child: Center(
                            child: Text(
                              "${data[index]}",
                              style: Theme.of(context).textTheme.displaySmall,
                            ) ,
                          ),
                        )
                    ),
                    itemCount:data.length,
                  ),
                ),
              ),
            ]
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
    );
  }
}