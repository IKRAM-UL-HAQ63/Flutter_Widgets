import 'package:flutter/material.dart';

class MyRichTextWidget extends StatelessWidget {
  const MyRichTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Rich Text"),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: RichText(
          text: TextSpan(
            style: TextStyle(fontSize: 20, color: Colors.black),
            children: [
              TextSpan(
                text: 'Hello ',
                style: TextStyle(fontWeight: FontWeight.bold,),
              ),
              TextSpan(
                text: 'Flutter ',
                style: TextStyle(color: Colors.blue,fontSize: 50),
              ),
              TextSpan(
                text: 'Developers!',
                style: TextStyle(fontStyle: FontStyle.italic, color: Colors.green),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
