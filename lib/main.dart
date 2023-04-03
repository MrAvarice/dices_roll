import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          centerTitle: true,
          title: Text(
            'Dicee',
            style: TextStyle(fontSize: 30),
          ),
        ),
        body: DicePage2(),
      ),
    );
  }
}

class DicePage2 extends StatefulWidget {
  const DicePage2({Key? key}) : super(key: key);

  @override
  State<DicePage2> createState() => _DicePage2State();
}

class _DicePage2State extends State<DicePage2> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void rollDie() {
    setState(() {
      rightDiceNumber = Random().nextInt(6) + 1;
      leftDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: TextButton(
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white70),
                ),
                onPressed: () {
                  rollDie();
                },
                child: Image.asset('images/dice$leftDiceNumber.png'),
              ),
            ),
            Expanded(
              flex: 1,
              child: TextButton(
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white70),
                ),
                onPressed: () {
                  rollDie();
                },
                child: Image.asset('images/dice$rightDiceNumber.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
