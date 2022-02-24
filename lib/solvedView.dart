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
        appBar: AppBar(
          title: Text(title),
        ),
        body: Stack(
            children: [
              Image.asset("assets/images/planets.png",),

              Hero(
                  tag: 'dash',
                  child: Image.asset("assets/images/sun.png",
                    alignment: Alignment.topLeft, width: 100, height:100,)
              ),


              Center(
                child: ElevatedButton(

                  child: Text('Navigate'),
                  onPressed: () {
                    print('pressed');
                    Navigator.push(
                      context,
                      PageRouteBuilder<void>(
                        transitionDuration: Duration(seconds: 4),
                        pageBuilder: (_, __, ___) => MyApp(),
                      ),
                    );

                    // Navigator.push(context,
                    //     MaterialPageRoute<void>(builder: (context) => MyApp()));
                  },
                ),
              )

            ]
        )

      ),
    );
  }
}