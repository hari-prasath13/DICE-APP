import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red[400],
        appBar: AppBar(
          backgroundColor: Colors.red[600],
          title: const Center(child: Text('DICEE')),
        ),
        body: const dice(),
      ),
    ),
  );
}

class dice extends StatefulWidget {
  const dice({super.key});

  @override
  State<dice> createState() => _diceState();
}



class _diceState extends State<dice> {

  int num = 1;
  int numb = 1;

  void blink() {
    setState(() {
      num =Random().nextInt(6) + 1;
      numb = Random().nextInt(6) + 1;
      print("CLICK");
    });
  }

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                 blink();
              },
              child: Image.asset('images/dice$num.png'),
            ),
          ),
          const SizedBox(width: 10,),
          Expanded(
            child: TextButton(
              onPressed: () {
                blink();
              },
              child: Image.asset('images/dice$numb.png'),
            ),
          ),
        ],
      ),
    );
  }
}



