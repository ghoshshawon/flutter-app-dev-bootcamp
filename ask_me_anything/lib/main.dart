import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AskMeAnythingApp(),
    ),
  );
}

class AskMeAnythingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[200],
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        title: const Text(
          'Ask Me Anything',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: const MagicBall(),
    );
  }
}

class MagicBall extends StatefulWidget {
  const MagicBall({Key? key}) : super(key: key);

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int magicDigit = 1;

  void updateBall() {
    setState(() {
      magicDigit = Random().nextInt(5) + 1; // Picks 1 to 5
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          updateBall();
        },
        child: Stack(
          alignment: Alignment.center,
          children: [
            ClipOval(
              child: Image.asset(
                'images/ball$magicDigit.png',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            Image.asset(
              'images/hole.png',

            ),
          ],
        ),
      ),
    );
  }
}
