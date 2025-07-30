import 'package:flutter/material.dart';
class Wrap_widget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 15,
      runSpacing: 15,
      children: [
        BuildIconBox(Icons.add, Colors.red),
        BuildIconBox(Icons.email, Colors.yellow),
        BuildIconBox(Icons.phone, Colors.pinkAccent),
        BuildIconBox(Icons.login, Colors.orange),
        BuildIconBox(Icons.logout, Colors.cyan),
        BuildIconBox(Icons.location_pin, Colors.indigo)
      ],
    );
  }
}
Widget BuildIconBox(IconData icon,Color color){
  return Container(
    margin: EdgeInsets.only(top: 20,left: 5),
    width: 100,
    height: 100,
    decoration: BoxDecoration(
        color: color,
        border: Border.all(width: 3,color: Colors.black87),
        borderRadius: BorderRadius.circular(15)
    ),
    child: Center(child: Icon(icon,size: 20,color: Colors.white,)),
  );
}