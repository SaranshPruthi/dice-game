import 'package:flutter/material.dart';
import 'package:dice_roll/container_file.dart';

const y1 = Color.fromARGB(215, 1, 18, 32);
const y2 = Color.fromARGB(166, 1, 37, 71);
const y3 = Color.fromARGB(182, 2, 32, 74);
void main()
{
  runApp(const MaterialApp(
    home: Scaffold(
      body: GradientContainer(colorss: [y1, y2, y3]),
    ),
  )
  );
}
