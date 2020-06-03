import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
      home: BallPage()));
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Colors.blueGrey[500],
          appBar: AppBar(
            backgroundColor: Colors.blueGrey[900],
            title: Text('Magic 8 Ball'),
          ),
          body: MyApp()
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int ballNumber = 1;

  void rollBall() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: FlatButton(
          onPressed: () {
            rollBall();
          },
          child: Image.asset('images/ball$ballNumber.png'),
        ),
      ),
    );
  }
}
