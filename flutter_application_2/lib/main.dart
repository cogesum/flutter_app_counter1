// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';

void main() => runApp(MyFirstApp());

class MyFirstApp extends StatelessWidget {
  const MyFirstApp({Key? key}) : super(key: key);

  static const String _title = "Counter";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: _title,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.indigo,
            title: const Text(_title),
            centerTitle: true,
          ),
          body: MyCounter(),
          backgroundColor: Colors.indigo[300],
        ));
  }
}

int _count = 50;

class MyCounter extends StatefulWidget {
  const MyCounter({Key? key}) : super(key: key);

  @override
  _MyCounterState createState() => _MyCounterState();
}

class _MyCounterState extends State<MyCounter> {
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Tap \"-\" to decrement",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 130, left: 130, top: 10, bottom: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: Colors.white60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      _count -= 1;
                    });
                  },
                  icon: Icon(Icons.remove),
                  splashRadius: 30,
                  splashColor: Colors.blue,
                  highlightColor: Colors.indigo,
                ),
                Text(
                  '$_count',
                  style: TextStyle(fontSize: 20),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      _count += 1;
                    });
                  },
                  icon: Icon(Icons.add),
                  splashRadius: 30,
                  splashColor: Colors.blue,
                  highlightColor: Colors.indigo,
                )
              ],
            ),
          ),
          Text(
            "Tap \"+\" to increment",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ]);
  }
}
