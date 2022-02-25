import 'package:flutter/material.dart';
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

    return MaterialApp(
      title: title,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text(title),
        ),
        body: GridView.count(

            crossAxisCount: 4,
            //16 children
            children: [
              //Image.asset("assets/images/planets.png",),

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

              //Earth
              Hero(
                tag: 'earth',
                child: Image.asset(
                  'assets/images/earth.png',
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

              //Jupiter
              Hero(
                tag: 'jupiter',
                child: Image.asset(
                  'assets/images/jupiter.png',
                  height: 50,
                  width: 50,
                ),
              ),

              //Saturn
              Hero(
                tag: 'saturn',
                child: Image.asset(
                  'assets/images/saturn.png',
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

              //Neptune
              Hero(
                tag: 'neptune',
                child: Image.asset(
                  'assets/images/neptune.png',
                  height: 50,
                  width: 50,
                ),
              ),

              Image.asset(
                'assets/images/moon.png',
                height: 50,
                width: 50,
              ),

              Image.asset(
                'assets/images/pluto.png',
                height: 50,
                width: 50,
              ),



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
        )

      ),
    );
  }
}