import 'package:flutter/material.dart';

class Stack_Positioned extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Stack & Positioned",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(
        child: Stack(
          children: [
            Container(width: 300, height: 300, color: Colors.red),
            Container(width: 200, height: 200, color: Colors.orange),
            Positioned(
              top: 20,
              right: 20,
              child: Icon(Icons.star, color: Colors.white, size: 40),
            ),
            Positioned(
              bottom: 20,
              left: 20,
              child: Text(
                "Flutter",
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
            Positioned(
              bottom: 20,
                right: 20,
                child: Icon(Icons.shield_moon,color: Colors.white,size: 40,)),
            Positioned(
              left: 160,
                top: 160,
                child: Container(
              width: 80,
              height: 80,
              color: Colors.black,
                  child: Icon(Icons.alarm,color:Colors.white,size: 30,),
            ))
          ],
        ),
      ),
    );
  }
}
