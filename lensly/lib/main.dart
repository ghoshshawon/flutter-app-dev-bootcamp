import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        title:
        Text(
          "Smart Buys for Smart Shots",
          style: TextStyle
          ( color: Colors.black,
            fontFamily: 'Chivo',
            fontSize: 19,
            fontStyle: FontStyle.italic,
          ),
        ),

        backgroundColor: Colors.amber[300],
      ),
        body: Padding(
          padding: EdgeInsets.only(top: 200),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.amber[300], // button background color
              foregroundColor: Colors.black, // text color
            ),
            onPressed: ()
            {

              //Add your action here
              print('Button Pressed!');

            },
            child: Text(
              'Mirrorless',
              style: TextStyle(fontSize: 18,
              color: Colors.black,
              fontFamily: 'Chivo'),
            ),

          ),

    ),
  )));
}

