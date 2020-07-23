import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(home: Magic8BallPage()),
    );

class Magic8BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          centerTitle: false,
          backgroundColor: Colors.blue.shade900,
        ),
        body: Magic8Ball());
  }
}

class Magic8Ball extends StatefulWidget {
  @override
  _Magic8BallState createState() => _Magic8BallState();
}

class _Magic8BallState extends State<Magic8Ball> {
  var ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        child: Image(
          image: AssetImage('images/ball$ballNumber.png'),
        ),
        onPressed: () {
          setState(() {
            ballNumber = Random().nextInt(5) + 1;
          });
        },
      ),
    );
  }
}
