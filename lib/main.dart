import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const magic_8_ball());
}

class magic_8_ball extends StatelessWidget {
  const magic_8_ball({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
          child: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Center(child: Text('Ask Me Anything')),
        ),
        body: Ball(),
      )),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: OutlinedButton(
        onPressed: () {
          setState(() {
            ballNumber = Random().nextInt(5) + 1;
          });
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Click on the ball to see the answer:',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset('images/ball$ballNumber.png')
          ],
        ),
      ),
    );
  }
}
