import 'package:flutter/material.dart';
import 'package:dice_roll/roll_dice.dart';

const tL = Alignment.topLeft;
const bR = Alignment.bottomRight;
const t1 = "Hello Saransh!  How are you?";
class GradientContainer extends StatelessWidget{
  const GradientContainer({super.key, required this.colorss}); //const GradientContainer({key1}): super(key: key1);
  final List<Color> colorss;
// first PR bcc...
// hello hi testing PR

  @override
  Widget build(context)
  {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: colorss,
            begin: tL,
            end: bR,
          )
        ),
        child: const Center(
          child: RollDice(),
        )
      ); 
  }
}

class StyledText extends StatelessWidget{
  const StyledText(this.txt, {super.key}); //const GradientContainer({key1}): super(key: key1);
  final String txt;

  @override
  Widget build(context)
  {
    return Text(txt, 
          style: const TextStyle(
            color: Colors.amber, 
            fontStyle: FontStyle.italic, 
            decoration: TextDecoration.underline,
            fontSize: 28,
            ),
          );
  }
}
