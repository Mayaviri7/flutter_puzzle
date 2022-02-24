import 'dart:math' as math;

import 'package:flutter/cupertino.dart';
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
    duration: const Duration(seconds: 100),
    vsync: this,
  )..repeat();

  //TODO test speed
  late final AnimationController _controller2 = AnimationController(
    duration: const Duration(seconds: 15),
    vsync: this,
  )..repeat();

  @override
  void dispose() {
    _controller.dispose();

    _controller2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(
        title: Text("Animation Demo"),
      ),

      body: Center(

        child:  AnimatedBuilder(
          animation: _controller2,
          builder: (BuildContext context, Widget? child) {
            return Transform.rotate(
              angle: _controller.value * 2.0 * math.pi,
              child: child,

            );
          },


          child: Container(
            //color: Colors.pink,

            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/sun.png",),
                //fit: BoxFit.scaleDown,
              )

            ),

            child: AnimatedBuilder(

              animation: _controller,

              child: Container(
               color: Colors.teal,
                width: 500,
                height: 500,
                //alignment: Alignment.topRight,


                child: Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Container(
                    width: 100.0,
                    height: 100.0,
                    color: Colors.green,
                    alignment: Alignment.topRight,
                    // where to position the child

                    // child: const Image(
                    //   fit: BoxFit.fill,
                    //   image: AssetImage("assets/images/planets.png"),
                    // ),

                    child: Container(
                      alignment: Alignment.topRight,
                      width: 30.0,
                      height: 30.0,
                      color: Colors.purple,
                      child: const Image(

                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/mercury.png"),
                      ),
                    ),
                  ),
                ),
              ),


              builder: (BuildContext context, Widget? child) {
                return Transform.rotate(
                  angle: _controller.value * 2.0 * math.pi,
                  child: child,

                );
              },
            ),
          ),
        )
      ),



    );




  }
}
