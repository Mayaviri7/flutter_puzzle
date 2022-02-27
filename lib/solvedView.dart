import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:very_good_slide_puzzle/testRotation2.dart';

//void main() => runApp(const solvedView());
void main() {
  runApp(MaterialApp(
    title: 'Your title',
    home: solvedView(),));}


class solvedView extends StatelessWidget {
  const solvedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var title = 'Web Images';

    Future.delayed(Duration(seconds: 5), () {
      Navigator.push(
        context,
        PageRouteBuilder<void>(
          transitionDuration: Duration(seconds: 5),
          pageBuilder: (_, __, ___) => MyApp(),
        ),
      );
    });


    return MaterialApp(
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

             /* Center(
                child: ElevatedButton(

                  child: Text('Navigate'),
                  onPressed: () {
                    print('pressed');
                    Navigator.push(
                      context,
                      PageRouteBuilder<void>(
                        transitionDuration: Duration(seconds: 5),
                        pageBuilder: (_, __, ___) => MyApp(),
                      ),
                    );

                    // Navigator.push(context,
                    //     MaterialPageRoute<void>(builder: (context) => MyApp()));
                  },
                ),
              ),*/

              // Center(
              //   child: ElevatedButton(
              //
              //     child: Text('Navigate'),
              //     onPressed: () {
              //       print('pressed');
              //       Navigator.push(
              //         context,
              //         PageRouteBuilder<void>(
              //           transitionDuration: Duration(seconds: 5),
              //           pageBuilder: (_, __, ___) => MyApp(),
              //         ),
              //       );
              //
              //       // Navigator.push(context,
              //       //     MaterialPageRoute<void>(builder: (context) => MyApp()));
              //     },
              //   ),
              // ),


            ],
          ),
        ),

        /* GridView.count(

            crossAxisCount: 3,
            //16 children
            children: [


              //Saturn
              Hero(
                tag: 'saturn',
                child: Image.asset(
                  'assets/images/saturn.png',
                  height: 50,
                  width: 50,
                ),
              ),

              //Neptune
              Hero(
                tag: 'neptune',
                child: Image.asset(
                  'assets/images/neptune.png',
                  height: 50,
                  width: 50,
                ),
              ),

              //Uranus
              Hero(
                tag: 'uranus',
                child: Image.asset(
                  'assets/images/uranus.png',
                  height: 50,
                  width: 50,
                ),
              ),

              //Jupiter
              Hero(
                tag: 'jupiter',
                child: Image.asset(
                  'assets/images/jupiter.png',
                  height: 50,
                  width: 50,
                ),
              ),

              // Sun
              Hero(
                  tag: 'sun',
                  child: Image.asset("assets/images/sun.png",
                    alignment: Alignment.topLeft, width: 50, height:50,)
              ),

              //Mercury
              Hero(
                tag: 'mercury',
                child: Image.asset(
                  "assets/images/mercury.png",
                  width: 50,
                  height: 50,
                  //alignment: Alignment(1, -1),
                ),
              ),

              //Venus
              Hero(
                tag: 'venus',
                child: Image.asset(
                  'assets/images/venus.png',
                  height: 50,
                  width: 50,
                ),
              ),

              //Mars
              Hero(
                tag: 'mars',
                child: Image.asset(
                  'assets/images/mars.png',
                  height: 50,
                  width: 50,
                ),
              ),

              //Earth
              Hero(
                tag: 'earth',
                child: Image.asset(
                  'assets/images/earth.png',
                  height: 50,
                  width: 50,
                ),
              ),



              // Image.asset(
              //   'assets/images/moon.png',
              //   height: 50,
              //   width: 50,
              // ),
              //
              // Image.asset(
              //   'assets/images/pluto.png',
              //   height: 50,
              //   width: 50,
              // ),



              //Button
              Center(
                child: ElevatedButton(

                  child: Text('Navigate'),
                  onPressed: () {
                    print('pressed');
                    Navigator.push(
                      context,
                      PageRouteBuilder<void>(
                        transitionDuration: Duration(seconds: 5),
                        pageBuilder: (_, __, ___) => MyApp(),
                      ),
                    );

                    // Navigator.push(context,
                    //     MaterialPageRoute<void>(builder: (context) => MyApp()));
                  },
                ),
              ),





            ]
        )*/


      ),

    );
  }
}