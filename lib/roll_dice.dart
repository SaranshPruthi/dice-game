import 'dart:math';
import 'package:flutter/material.dart';
final randomizer = Random();
class RollDice extends StatefulWidget{
  const RollDice({super.key});
  @override
  State<RollDice> createState(){
    return _RollDice();
  }
}

class _RollDice extends State<RollDice>{
  var dice = "assets/images/dice-1.png";
  void rollDice()
  {
    int num = randomizer.nextInt(6) + 1;
    setState(() {
      dice = "assets/images/dice-$num.png";
    });
  }
  @override
  Widget build(context){
    return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(dice, width: 250,),
              const SizedBox(height: 50,),
              TextButton(
                onPressed: rollDice, 
                style: TextButton.styleFrom(
                  foregroundColor: const Color.fromARGB(255, 231, 232, 231),
                  textStyle: const TextStyle(
                    fontSize: 24, decorationStyle: TextDecorationStyle.solid, 
                    fontFamily: AutofillHints.name, 
                    decorationThickness: BorderSide.strokeAlignCenter,
                  )
                ),
                child: const Text("Roll the dice!"),
              )
            ]
          );
  }
}