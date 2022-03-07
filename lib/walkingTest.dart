import 'package:flutter/material.dart';
import 'dart:math';

import 'package:very_good_slide_puzzle/puzzle/puzzle.dart';

//imported material design package
void main() {
  runApp(
    //Widget tree starts from here
    MaterialApp(
      home: Scaffold(

        body: Center(
          child: PuzzleBoard(),
          // child: Transform.rotate(
          //   angle: -pi * 90 / 180,
          //   child: Container(
          //     //color: Colors.amber[600],
          //     height:60,
          //     width: 60,
          //     child: Image.asset('assets/images/manRun.gif',
          //     ),
          //   ),
          // ), //Container
        ), //Center
      ), //Scaffold
    ), //MaterialApp
  );
}
