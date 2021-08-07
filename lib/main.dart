import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({Key key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftNumberDice = 5;
  int rightNumberDice = 5;

  void changeDiceNumber(){
    setState(() {
      leftNumberDice = Random().nextInt(6)+1;
      rightNumberDice = Random().nextInt(6)+1;
    });

  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  changeDiceNumber();
                });
              },
              child: Image.asset('images/dice$leftNumberDice.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                changeDiceNumber();
              },
              child: Image.asset('images/dice$rightNumberDice.png'),
            ),
          )
        ],
      ),
    );
  }
}
