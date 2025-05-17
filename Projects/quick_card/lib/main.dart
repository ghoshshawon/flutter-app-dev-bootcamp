import 'package:flutter/material.dart';

void main() {
  runApp(Buzz());
}

class Buzz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal[700],
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 100),
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/SHWON.jpg'),
              ),
              Text(
                "Shwon Ghosh",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontFamily: 'Kalam',
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "FLUTTER DEVLOPER",
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.white,
                  fontFamily: 'NotoSansJP',
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                decoration: BoxDecoration(
                  color: Colors.white38,
                  borderRadius: BorderRadius.circular(15), // 👈 curved edges
                ),
                child: Row(
                  children: [
                    Icon(Icons.phone,
                    size: 18,
                    color: Colors.white,
                    ),
                    SizedBox(width: 10.0),
                    Text("+91 9564729926",
                    style: TextStyle( color: Colors.white,
                    fontSize: 15,
                    fontFamily: 'NotoSansJP'),),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                decoration: BoxDecoration(
                  color: Colors.white38,
                  borderRadius: BorderRadius.circular(15), // 👈 curved edges
                ),
                child: Row(
                  children: [
                    Icon(Icons.email,
                      size: 18,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10.0),
                    Text("ghoshshawon491@gmail.com",
                      style: TextStyle( color: Colors.white,
                          fontSize: 15,
                          fontFamily: 'NotoSansJP'),),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                decoration: BoxDecoration(
                  color: Colors.white38,
                  borderRadius: BorderRadius.circular(15), // 👈 curved edges
                ),
                child: Row(
                  children: [
                    Image.asset('images/link.png',
                      height: 20,
                      width: 20,
                      //color: Colors.white,
                    ),
                    SizedBox(width: 10.0),
                    Text("shwonghosh",
                      style: TextStyle( color: Colors.white,
                          fontSize: 15,
                          fontFamily: 'NotoSansJP'),),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                decoration: BoxDecoration(
                  color: Colors.white38,
                  borderRadius: BorderRadius.circular(15), // 👈 curved edges
                ),
                child: Row(
                  children: [
                    Icon(Icons.home,
                      size: 18,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10.0),
                    Text("Pandua, Hooghly, WestBengal, 712149",
                      style: TextStyle( color: Colors.white,
                          fontSize: 15,
                          fontFamily: 'NotoSansJP'),),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
