import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Review"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body:  Container(
          padding: EdgeInsetsGeometry.all(20),
          margin: EdgeInsetsGeometry.all(40),
          height: 300,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.yellow,
            // borderRadius: BorderRadius.circular(20),
            // shape: BoxShape.circle,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20)),
            boxShadow: [
              BoxShadow(color: Colors.grey, blurRadius: 20, spreadRadius: 5),
            ],
          ),
          child: Container(
            margin: EdgeInsetsGeometry.all(20),
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.red,),
            // child: Text(
            //   "Review",
            //   style: TextStyle(fontSize: 25, color: Colors.black),
            ),
      ),
    );
  }
}
