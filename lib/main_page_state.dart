import 'package:flutter/material.dart';
import './main_page.dart';
import './widgets/letter.dart'; 
import './utils/game.dart';
import './widgets/gallows_image.dart';
import './utils/words.dart';
import './utils/alpha.dart';

class MainPageState extends State<MainPage> {
  String wordAndTips = randomWord();
  
  
  @override
  Widget build(BuildContext context) {
    String word = wordAndTips.split(".")[0];
    String tip = wordAndTips.split(".")[1];

    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      appBar: AppBar(
        title: const Text("Hangman Game"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child:Stack(
              children: [
                gallowsImage(Game.tries >= 0,"assets/images/gallow.png"),
                gallowsImage(Game.tries >= 1,"assets/images/head.png"),
                gallowsImage(Game.tries >= 2,"assets/images/body.png"),
                gallowsImage(Game.tries >= 3,"assets/images/left_arm.png"),
                gallowsImage(Game.tries >= 4,"assets/images/right_arm.png"),
                gallowsImage(Game.tries >= 5,"assets/images/left_leg.png"),
                gallowsImage(Game.tries >= 6,"assets/images/right_leg.png"),
              ],

            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: word
                .split("")
                .map((e) => letter(e.toUpperCase(),
                    Game.selectedKey.contains(e.toUpperCase())))
                .toList(),
          ),
          SizedBox(
            child: Text(tip),
          ),


          // SizedBox(
          //   child: Text(),
            
          // ),
          SizedBox(
            width: double.infinity,
            height: 250.0,
            
            child: GridView.count(
              crossAxisCount: 6,
              mainAxisSpacing: 0.0,
              crossAxisSpacing: 0.0,
              padding: const EdgeInsets.all(2.0),
              children: alpha().map((e) {
                return RawMaterialButton(
                  onPressed: Game.selectedKey.contains(e)
                      ? null
                      : () { //se estiver contido na palavra chama a funcao:
                          setState(() {
                            Game.selectedKey.add(e);
                            if (!word.split("").contains(e.toUpperCase())) {
                              Game.tries++;
                              Image.asset("assets/images/${Game.tries}.png");
                            }
                          });
                        },
                  fillColor: Game.selectedKey.contains(e)
                      ? Colors.black87
                      : Colors.transparent,
                  child: Text(
                    e,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          SizedBox(
            child:
              Text(" Matheus,Joao Pedro"),
          ),
        ],
      ),
    );
  }
}

