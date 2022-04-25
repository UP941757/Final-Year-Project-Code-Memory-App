import 'package:flutter/material.dart';
import 'package:memorygame/Screens/GameScreen.dart';
import 'package:memorygame/Screens/HelpScreen1.dart';
import 'package:memorygame/Screens/HomeScreen.dart';


class StartScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
                "Welcome To Brain Trainer",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 65,
                  fontStyle: FontStyle.italic
              ),
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                    ));
              },
              child: Text("Start"),
              style: ButtonStyle(
                backgroundColor: getColor(Colors.deepPurpleAccent,Colors.green),
                padding:MaterialStateProperty.all(const EdgeInsets.all(30)),
              ),
            ),
          ],
        ),
      ),
    );
  }
  MaterialStateProperty<Color> getColor(Color color,Color colorPressed){
    final getColor = (Set<MaterialState> states){
      if(states.contains(MaterialState.pressed)){
        return colorPressed;
      }else{
        return color;
      }
    };
    return MaterialStateProperty.resolveWith(getColor);
  }
}



