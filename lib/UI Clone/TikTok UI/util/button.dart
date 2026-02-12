import 'package:flutter/material.dart';
class MyButton extends StatelessWidget {
  final icon;
  final String number;
  MyButton({ required this.icon, required this.number});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        children: [
          Icon(icon,
          size: 30,),
          SizedBox(height: 10),
          Text(number)],
      ),
    );
  }
}
