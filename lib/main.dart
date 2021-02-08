import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  var number = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Sample App'),
          centerTitle: true,
        ),
        body: Center(
          child: Text(
            '$number',
            style: TextStyle(
              fontSize: 80.0,
              color: Colors.black,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.navigation),
          onPressed: () {
            setState(() {
              number += 1;
            });
          },
        ),
      ),
    );
  }
}
