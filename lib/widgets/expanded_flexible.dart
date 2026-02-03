import 'package:flutter/material.dart';

class Expanded_Flexible extends StatelessWidget {
  const Expanded_Flexible({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Review"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(width: 50, height: 50, color: Colors.red),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Container(width: 50, height: 50, color: Colors.blue),
                ),
              ],
            ),
            SizedBox(height: 100),
            Row(
              children: [
                Container(height: 50, width: 50, color: Colors.green),
                SizedBox(width: 20),
                Flexible(
                  flex: 1,
                  child: Container(height: 50, width: 100, color: Colors.black),
                ),
                SizedBox(width: 5),
                Flexible(
                  flex: 2,
                  child: Container(height: 50, color: Colors.purple),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
