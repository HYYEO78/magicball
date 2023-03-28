// importing flutter and dart packages
import 'package:flutter/material.dart';
import 'dart:math';

// Creates a Material App
void main() => runApp(
  MaterialApp(
    home: BallPage(),
  ),
);

// Creates a Scaffold with
// appbar using Stateless widget
class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text('Ask Me Anything'),
        centerTitle: true
      ),
      body: Ball(
        key: UniqueKey(),
      ),
    );
  }
}

// Creates a Stateful widget
class Ball extends StatefulWidget {
  Ball({required Key key}) : super(key: key);

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  @override

// Returns app with centered image Flatbutton
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {

            // Random.nextInt(n) returns random
            // integer from 0 to n-1
            ballNumber = Random().nextInt(5) + 1;
          });
        },

        // Adding images
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}
