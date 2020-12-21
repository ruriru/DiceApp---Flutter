import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dice')),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 6;

  void DiceNumber() {
    setState(() {
      rightDiceNumber = Random().nextInt(6) + 1;
      leftDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: FlatButton(
                  onPressed: () {
                    DiceNumber();
                  },
                  child: Image.asset('images/dice$leftDiceNumber.png'),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: FlatButton(
                  onPressed: () {
                    DiceNumber();
                  },
                  child: Image.asset('images/dice$rightDiceNumber.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
