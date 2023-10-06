import 'dart:math';

import 'package:flutter/material.dart';
// import 'package:dicee/main.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Text("Dicee Roll"),
        ),
        body: Dicepage(),
      ),
    ),
  );
}

class Dicepage extends StatefulWidget {
  @override
  _DicepageState createState() => _DicepageState();
}

class _DicepageState extends State<Dicepage> {
  int leftdicenumber = 3;
  int rightdicenumber = 3;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(
                  () {
                     leftdicenumber = Random().nextInt(6)+1;
                  },
                );
              },
              child: Image.asset("images/dice$leftdicenumber.png"),
            ),
          ),
          Expanded(
            child: TextButton(

              onPressed: () {
                setState(() {
                  rightdicenumber=Random().nextInt(6)+1;

                });
              },
              child: Image.asset("images/dice$rightdicenumber.png"),
            ),
          )
        ],
      ),
    );
  }
}
