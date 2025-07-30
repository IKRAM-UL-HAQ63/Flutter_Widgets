import 'package:flutter/material.dart';

class RowIcons extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment:MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 70,
                height: 70,
                color: Colors.deepPurple,
                child: Icon(Icons.phone,size: 30,color: Colors.white,),
              ),
              Text("Phone",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 70,
                height: 70,
                color: Colors.pinkAccent,
                child: Icon(Icons.email,size: 30,color: Colors.white,),
              ),
              Text("Email",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 70,
                height: 70,
                color: Colors.amber,
                child: Icon(Icons.location_pin,size: 30,),
              ),
              Text("Location",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
            ],
          )
        ],
      ),
    );
  }
}