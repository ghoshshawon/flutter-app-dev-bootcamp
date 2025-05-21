# 📘 Day 5 – Dart Math, ClipOval, Design Elements & Mini App Project

---

## ✅ Dart Math Library

- The `dart:math` library provides **math functions and constants** like `pi`, `sqrt`, `Random()`, etc.
- It's used to generate random numbers, perform trigonometric functions, and more.

📄 **Docs:** [Dart Math Library](https://api.dart.dev/stable/dart-math/dart-math-library.html)

### 🔸 Example – Generate random number:
```dart
import 'dart:math';

final random = Random();
int diceNumber = random.nextInt(6) + 1; // 1 to 6
```
### ✅ What is ClipOval?
A widget that clips its child into an oval or circle.

Great for creating circular images or buttons.

📄 **Docs:** [ClipOval](https://api.flutter.dev/flutter/widgets/ClipOval-class.html).

🔸 Example:
```dart
ClipOval(
  child: Image.asset(
    'images/avatar.png',
    width: 100,
    height: 100,
    fit: BoxFit.cover,
  ),
)
```
### ✅ Design Tips: How to Create Visually Good Layouts
🎨 Use consistent padding (EdgeInsets.all(16) is a good start).

🧱 Use Container to decorate and position widgets with margin, padding, color, and borderRadius.

💠 Use BoxDecoration for gradients, shadows, rounded corners.

🎯 Use Align or Center for positioning.

🎭 Use ClipRRect for rounded corners.

🖼️ Use Icons and IconButton for interactivity.

🔸 Example – Nice Card UI:
```dart
Container(
  margin: EdgeInsets.all(16),
  padding: EdgeInsets.all(16),
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(12),
    boxShadow: [
      BoxShadow(color: Colors.grey, blurRadius: 8),
    ],
  ),
  child: Row(
    children: [
      Icon(Icons.person),
      SizedBox(width: 10),
      Text("Username"),
    ],
  ),
)
```
### ✅ 🧪 Mini Project: Ask Me Anything App
📱 Project Name: ask_me_anything
A fun, interactive app where users can tap a ball to receive a random answer — like a magic 8-ball toy!

💡 Features:
Random answer images shown on tap.

Uses GestureDetector for user interaction.

Uses Random() from dart:math.

Image asset-based answers (images/ball1.png, ball2.png, etc.).

🔸 Core Code:
```dart

import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(AskMeAnything());

class AskMeAnything extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(title: Text('Ask Me Anything'), backgroundColor: Colors.blue.shade900),
        body: BallPage(),
      ),
    );
  }
}

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballNumber = 1;

  void changeBall() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1; // 1 to 5
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: changeBall,
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}
```
### 🧩 Where to find it:
This project is part of your Flutter Projects → ask_me_anything folder.
