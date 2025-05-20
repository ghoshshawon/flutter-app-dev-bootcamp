import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("Capture", style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Center(child: Image(image: AssetImage('images/Center.png'))),
      ),
    ),
  );
}
