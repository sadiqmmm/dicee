import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dicee",
      debugShowCheckedModeBanner: false,
      home: DicePage(),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 2;

  void changeDiceFace() {
    leftDiceNumber = Random().nextInt(6) + 1;
    rightDiceNumber = Random().nextInt(6) + 1;

    // print("Dice Left Number:= $leftDiceNumber");
    // print("Dice Right Number:= $rightDiceNumber");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("Dicee"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: FlatButton(
                child: Image.asset("images/dice$leftDiceNumber.png"),
                onPressed: () {
                  setState(() {
                    changeDiceFace();
                  });
                },
              ),
            ),
            Expanded(
              child: FlatButton(
                child: Image.asset("images/dice$rightDiceNumber.png"),
                onPressed: () {
                  setState(() {
                    changeDiceFace();
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
