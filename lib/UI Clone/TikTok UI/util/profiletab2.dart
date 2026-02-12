import 'package:flutter/material.dart';
class SecondTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemCount: 4,
      itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
            color: Colors.pink[200],
          ),
        );
      },
    );
  }
}
