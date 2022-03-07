
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:very_good_slide_puzzle/testRotation2.dart';


class solvedWidget extends StatelessWidget {
   static const size = 300.00;

  const solvedWidget({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
        context,
        PageRouteBuilder<void>(
          transitionDuration: Duration(seconds: 4),
          pageBuilder: (_, __, ___) => MyApp(),
        ),
      );
    });
    return Center(

      child: Stack(

        alignment: Alignment.center,

        //bottom
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/stars.jpg',
              repeat: ImageRepeat.repeat,
            ),
          ),
          //Neptune
          Transform.rotate(
            angle: (math.pi)/4,
            child: Container(color: Colors.transparent,
              width: size,
              height: size,
              alignment: Alignment.topLeft,
              child: Hero(
                tag: 'neptune',
                child: Image.asset(
                  'assets/images/neptune.png',
                  height: 100,
                  width: 100,
                ),
              ),
            ),
          ),

          //Uranus
          Transform.rotate(
            angle: math.pi / 2,
            child: Container(color: Colors.transparent,
              width: 330,
              height: 330,
              alignment: Alignment.topLeft,
              child: Hero(
                tag: 'uranus',
                child: Image.asset(
                  'assets/images/uranus.png',
                  height: 90,
                  width: 90,
                ),
              ),
            ),
          ),

          //mercury // orange
          Transform.rotate(
            angle: (2 * math.pi) /3,
            child: Container(
              alignment: Alignment.topLeft,
              color: Colors.transparent,
              width: 300,
              height: 300,
              child: Hero(
                tag: 'mercury',
                child: Image.asset(
                  'assets/images/mercury.png',
                  height: 60,
                  width: 60,
                ),
              ),
            ),
          ),

          //Venus // yellow
          Transform.rotate(
            angle: (5 * math.pi)/6,
            child: Container(
              alignment: Alignment.topLeft,
              color: Colors.transparent,
              width: 300,
              height: 300,
              child: Hero(
                tag: 'venus',
                child: Image.asset(
                  'assets/images/venus.png',
                  height: 80,
                  width: 80,
                ),
              ),
            ),
          ),

          //Earth // green
          Transform.rotate(
            angle: (7 * math.pi)/6,
            child: Container(
              alignment: Alignment.topLeft,
              color: Colors.transparent,
              width: 350,
              height: 350,
              child: Hero(
                tag: 'earth',
                child: Image.asset(
                  'assets/images/earth.png',
                  height: 90,
                  width: 90,
                ),
              ),
            ),
          ),

          //Mars
          Transform.rotate(
            angle: (4 * math.pi)/3,
            child: Container(color: Colors.transparent,
              width: 350,
              height: 350,
              alignment: Alignment.topLeft,
              child: Hero(
                tag: 'mars',
                child: Image.asset(
                  'assets/images/mars.png',
                  height: 90,
                  width: 90,
                ),
              ),
            ),
          ),

          //Jupiter
          Transform.rotate(
            angle: (285* math.pi)/180,
            child: Container(color: Colors.transparent,
              width: 380,
              height: 380,
              alignment: Alignment.topLeft,
              child: Hero(
                tag: 'jupiter',
                child: Image.asset(
                  'assets/images/jupiter.png',
                  height: 130,
                  width: 130,
                ),
              ),
            ),
          ),

          //Saturn
          Transform.rotate(
            angle: (340 * math.pi)/180,
            child: Container(color: Colors.transparent,
              width: 380,
              height: 380,
              alignment: Alignment.topLeft,
              child: Hero(
                tag: 'saturn',
                child: Transform.scale(
                  scale: 1.10,
                  child: Image.asset(
                    'assets/images/saturn.png',
                    height: 200,
                    width: 200,
                  ),
                ),
              ),
            ),
          ),

          //Sun
          Container(
            color: Colors.transparent,
            width: 180,
            height: 180,

            child: Hero(
              tag: 'sun',
              child: Image.asset(
                'assets/images/sun.png',
                fit: BoxFit.fill,
              ),
            ),
          ),




        ],
      ),
    );


 /*   return MaterialApp(
      title: title,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Stack(

            alignment: Alignment.center,

            //bottom
            children: [
              Positioned.fill(
                child: Image.asset(
                  'assets/images/stars.jpg',
                  repeat: ImageRepeat.repeat,
                ),
              ),
              //Neptune
              Transform.rotate(
                angle: (math.pi)/4,
                child: Container(color: Colors.transparent,
                  width: 350,
                  height: 350,
                  alignment: Alignment.topLeft,
                  child: Hero(
                    tag: 'neptune',
                    child: Image.asset(
                      'assets/images/neptune.png',
                      height: 100,
                      width: 100,
                    ),
                  ),
                ),
              ),

              //Uranus
              Transform.rotate(
                angle: math.pi / 2,
                child: Container(color: Colors.transparent,
                  width: 350,
                  height: 350,
                  alignment: Alignment.topLeft,
                  child: Hero(
                    tag: 'uranus',
                    child: Image.asset(
                      'assets/images/uranus.png',
                      height: 100,
                      width: 100,
                    ),
                  ),
                ),
              ),

              //mercury // orange
              Transform.rotate(
                angle: (2 * math.pi) /3,
                child: Container(
                  alignment: Alignment.topLeft,
                  color: Colors.transparent,
                  width: 350,
                  height: 350,
                  child: Hero(
                    tag: 'mercury',
                    child: Image.asset(
                      'assets/images/mercury.png',
                      height: 60,
                      width: 60,
                    ),
                  ),
                ),
              ),

              //Venus // yellow
              Transform.rotate(
                angle: (5 * math.pi)/6,
                child: Container(
                  alignment: Alignment.topLeft,
                  color: Colors.transparent,
                  width: 350,
                  height: 350,
                  child: Hero(
                    tag: 'venus',
                    child: Image.asset(
                      'assets/images/venus.png',
                      height: 80,
                      width: 80,
                    ),
                  ),
                ),
              ),

              //Earth // green
              Transform.rotate(
                angle: (7 * math.pi)/6,
                child: Container(
                  alignment: Alignment.topLeft,
                  color: Colors.transparent,
                  width: 350,
                  height: 350,
                  child: Hero(
                    tag: 'earth',
                    child: Image.asset(
                      'assets/images/earth.png',
                      height: 90,
                      width: 90,
                    ),
                  ),
                ),
              ),

              //Mars
              Transform.rotate(
                angle: (4 * math.pi)/3,
                child: Container(color: Colors.transparent,
                  width: 350,
                  height: 350,
                  alignment: Alignment.topLeft,
                  child: Hero(
                    tag: 'mars',
                    child: Image.asset(
                      'assets/images/mars.png',
                      height: 90,
                      width: 90,
                    ),
                  ),
                ),
              ),

              //Jupiter
              Transform.rotate(
                angle: (285* math.pi)/180,
                child: Container(color: Colors.transparent,
                  width: 430,
                  height: 430,
                  alignment: Alignment.topLeft,
                  child: Hero(
                    tag: 'jupiter',
                    child: Image.asset(
                      'assets/images/jupiter.png',
                      height: 160,
                      width: 160,
                    ),
                  ),
                ),
              ),

              //Saturn
              Transform.rotate(
                angle: (340 * math.pi)/180,
                child: Container(color: Colors.transparent,
                  width: 500,
                  height: 500,
                  alignment: Alignment.topLeft,
                  child: Hero(
                    tag: 'saturn',
                    child: Image.asset(
                      'assets/images/saturn.png',
                      height: 250,
                      width: 250,
                    ),
                  ),
                ),
              ),

              //Sun
              Container(
                color: Colors.transparent,
                width: 180,
                height: 180,

                child: Hero(
                  tag: 'sun',
                  child: Image.asset(
                    'assets/images/sun.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),




            ],
          ),
        ),

      ),

    );*/
  }
}