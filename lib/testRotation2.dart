import 'dart:math' as math;
import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// AnimationControllers can be created with `vsync: this` because of TickerProviderStateMixin.
class _MyStatefulWidgetState extends State<MyStatefulWidget>
    with TickerProviderStateMixin {

  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2), //3
    vsync: this,
  )..repeat();

  late final AnimationController _controller2 = AnimationController(
    duration: const Duration(seconds: 4), //7
    vsync: this,
  )..repeat();

  late final AnimationController _controller3 = AnimationController(
    duration: const Duration(seconds: 6), //12
    vsync: this,
  )..repeat();

  late final AnimationController _controller4 = AnimationController(
    duration: const Duration(seconds: 8), //23
    vsync: this,
  )..repeat();

  late final AnimationController _controller5 = AnimationController(
    duration: const Duration(seconds: 10), //142
    vsync: this,
  )..repeat();

  late final AnimationController _controller6 = AnimationController(
    duration: const Duration(seconds: 12), //354
    vsync: this,
  )..repeat();

  late final AnimationController _controller7 = AnimationController(
    duration: const Duration(seconds: 14), //1008
    vsync: this,
  )..repeat();

  late final AnimationController _controller8 = AnimationController(
    duration: const Duration(seconds: 20), //1977
    vsync: this,
  )..repeat();


  @override
  void dispose() {
    _controller.dispose();
    _controller2.dispose();
    _controller3.dispose();
    _controller4.dispose();
    _controller5.dispose();
    _controller6.dispose();
    _controller7.dispose();
    _controller8.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   //title: Text('Solar System (1 second = 1 month)', style: TextStyle(fontWeight: FontWeight.bold),),
      //   backgroundColor: Colors.transparent,
      //
      // ),

      backgroundColor: Colors.black,

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Stack(

            alignment: Alignment.center,

            //bottom
            children: [

              //Neptune
              AnimatedBuilder(
                animation: _controller8,
                builder: (BuildContext context, Widget? child) {
                  return Transform.rotate(
                    angle: _controller8.value * 2.0 * math.pi,
                    child: child,
                  );
                },
                child: Container(color: Colors.transparent,
                  width: 470,
                  height: 470,
                  alignment: Alignment.topLeft,
                  child: Hero(
                    tag: 'neptune',
                    child: Image.asset(
                      'assets/images/neptune.png',
                      height: 40,
                      width: 40,
                    ),
                  ),
                ),
              ),

              //Uranus
              AnimatedBuilder(
                animation: _controller7,
                builder: (BuildContext context, Widget? child) {
                  return Transform.rotate(
                    angle: _controller7.value * 2.0 * math.pi,
                    child: child,
                  );
                },
                child: Container(color: Colors.transparent,
                  width: 419,
                  height: 419,
                  alignment: Alignment.topLeft,
                  child: Hero(
                    tag: 'uranus',
                    child: Image.asset(
                      'assets/images/uranus.png',
                      height: 40,
                      width: 40,
                    ),
                  ),
                ),
              ),

              //Saturn
              AnimatedBuilder(
                animation: _controller6,
                builder: (BuildContext context, Widget? child) {
                  return Transform.rotate(
                    angle: _controller6.value * 2.0 * math.pi,
                    child: child,
                  );
                },
                child: Container(color: Colors.transparent,
                  width: 415,
                  height: 415,
                  alignment: Alignment.topLeft,
                  child: Hero(
                    tag: 'saturn',
                    child: Image.asset(
                      'assets/images/saturn.png',
                      height: 100,
                      width: 100,
                    ),
                  ),
                ),
              ),

              //Jupiter
              AnimatedBuilder(
                animation: _controller5,
                builder: (BuildContext context, Widget? child) {
                  return Transform.rotate(
                    angle: _controller5.value * 2.0 * math.pi,
                    child: child,
                  );
                },

                child: Container(color: Colors.transparent,
                  width: 300,
                  height: 300,
                  alignment: Alignment.topLeft,
                  child: Hero(
                    tag: 'jupiter',
                    child: Image.asset(
                      'assets/images/jupiter.png',
                      height: 60,
                      width: 60,
                    ),
                  ),
                ),
              ),


              //Mars
              AnimatedBuilder(
                animation: _controller4,
                builder: (BuildContext context, Widget? child) {
                  return Transform.rotate(
                    angle: _controller4.value * 2.0 * math.pi,
                    child: child,
                  );
                },
                child: Container(color: Colors.transparent,
                  width: 205,
                  height: 205,
                  alignment: Alignment.topLeft,
                  child: Hero(
                    tag: 'mars',
                    child: Image.asset(
                      'assets/images/mars.png',
                      height: 20,
                      width: 20,
                    ),
                  ),
                ),
              ),

              //Earth // green
              AnimatedBuilder(
                animation: _controller3,
                builder: (BuildContext context, Widget? child) {
                  return Transform.rotate(
                    angle: _controller3.value * 2.0 * math.pi,
                    child: child,
                  );
                },
                child: Container(
                  alignment: Alignment.topLeft,
                  color: Colors.transparent,
                  width: 180,
                  height: 180,
                  child: Hero(
                    tag: 'earth',
                    child: Image.asset(
                      'assets/images/earth.png',
                      height: 30,
                      width: 30,
                    ),
                  ),
                ),
              ),

              //Venus // yellow
              AnimatedBuilder(
                animation: _controller2,
                builder: (BuildContext context, Widget? child) {
                  return Transform.rotate(
                    angle: _controller2.value * 2.0 * math.pi,
                    child: child,
                  );
                },
                child: Container(
                  alignment: Alignment.topLeft,
                  color: Colors.transparent,
                  width: 140,
                  height: 140,
                  child: Hero(
                    tag: 'venus',
                    child: Image.asset(
                      'assets/images/venus.png',
                      height: 30,
                      width: 30,
                    ),
                  ),
                ),
              ),

              //mercury // orange
              AnimatedBuilder(
                animation: _controller,
                builder: (BuildContext context, Widget? child) {
                  return Transform.rotate(
                    angle: _controller.value * 2.0 * math.pi,
                    child: child,
                  );
                },
                child: Container(
                  alignment: Alignment.topLeft,
                  color: Colors.transparent,
                  width: 95,
                  height: 95,
                  child: Hero(
                    tag: 'mercury',
                    child: Image.asset(
                      'assets/images/mercury.png',
                      height: 20,
                      width: 20,
                    ),
                  ),
                ),

              ),

              //Sun
              Container(
                color: Colors.transparent,
                width: 100,
                height: 100,
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

    );
  }
}
