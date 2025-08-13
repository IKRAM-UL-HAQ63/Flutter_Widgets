import 'package:flutter/material.dart';

class Profile_card extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: Text(
          "Container",
          style: TextStyle(
            color: Colors.white,
            fontSize: 90,
            fontFamily: "FontMain",
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 300,
            height: 150,
            alignment: Alignment.center,
            margin: EdgeInsets.only(left: 20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.red, Colors.lime, Colors.deepPurple],
              ),
              border: Border.all(color: Colors.black, width: 3),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Text("👤", style: TextStyle(fontSize: 30)),
          ),
          Container(
            width: 300,
            height: 100,
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: 20, top: 10),
            decoration: BoxDecoration(
              gradient: SweepGradient(
                colors: [
                  Colors.red,
                  Colors.lime,
                  Colors.deepPurple,
                  Colors.lime,
                  Colors.cyan,
                  Colors.pinkAccent,
                ],
              ),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black, width: 3),
            ),
            child: Container(
              padding: EdgeInsets.only(left: 5),
              child: Text(
                "Name: IKRAM-UL-HAQ",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            width: 300,
            height: 100,
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: 20, top: 10),
            decoration: BoxDecoration(
              gradient: SweepGradient(
                colors: [
                  Colors.red,
                  Colors.lime,
                  Colors.deepPurple,
                  Colors.lime,
                  Colors.cyan,
                  Colors.pinkAccent,
                ],
              ),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black, width: 3),
            ),
            child: Container(
              padding: EdgeInsets.only(left: 5),
              child: Text(
                "Email: ikrab@email.com",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            width: 300,
            height: 100,
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: 20, top: 10),
            decoration: BoxDecoration(
              gradient: SweepGradient(
                colors: [
                  Colors.red,
                  Colors.lime,
                  Colors.deepPurple,
                  Colors.lime,
                  Colors.cyan,
                  Colors.pinkAccent,
                ],
              ),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black, width: 3),
            ),
            child: Container(
              padding: EdgeInsets.only(left: 5),
              child: Text(
                "Country: Pakistan",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
