import 'package:flutter/material.dart';


class Stack_Positioned extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stack & Positioned"),
      backgroundColor: Colors.blue,
      centerTitle: true,),
      body: Center(
        child: Stack(
          children: [
            Container(
              width: 300,
              height: 300,
              color: Colors.red,
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.orange,
            ),
            Positioned(
              top: 20,
              right: 20,
              child: Icon(Icons.star, color: Colors.white, size: 40),
            ),
            Positioned(
              bottom: 10,
              left: 10,
              child: Text(
                "Flutter",
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
