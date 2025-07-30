import 'package:flutter/material.dart';
class Scrolible_widget extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(width: 70, color: Colors.red, height: 100),
                SizedBox(width: 10,),
                Container(width: 70, color: Colors.pinkAccent, height: 100),
                SizedBox(width: 10,),
                Container(width: 70, color: Colors.black, height: 100),
                SizedBox(width: 10,),
                Container(width: 70, color: Colors.red, height: 100),
                SizedBox(width: 10,),
                Container(width: 70, color: Colors.pinkAccent, height: 100),
                SizedBox(width: 10,),
                Container(width: 70, color: Colors.black, height: 100),

              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(width: width, color: Colors.green, height: 100),
          Container(width: width, color: Colors.blue, height: 100),
          Container(width: width, color: Colors.red, height: 100),
          Container(width: width, color: Colors.green, height: 100),
          Container(width: width, color: Colors.blue, height: 100),
          Container(width: width, color: Colors.green, height: 100),
          Container(width: width, color: Colors.blue, height: 100),
          Container(width: width, color: Colors.red, height: 100),
          Container(width: width, color: Colors.green, height: 100),
          Container(width: width, color: Colors.blue, height: 100),
        ],
      ),
    );
  }
}