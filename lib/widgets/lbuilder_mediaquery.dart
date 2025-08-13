import 'package:flutter/material.dart';

class LBuilder_MediaQuery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(width: w * 0.4, height: h * 0.15, color: Colors.blue),
        SizedBox(height: 10),
        LayoutBuilder(
          builder: (context, constraints) {
            double W = constraints.maxWidth;
            return Container(width: W * 0.5, height: 100, color: Colors.green);
          },
        ),
      ],
    );
  }
}
