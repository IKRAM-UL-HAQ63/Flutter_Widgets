import 'package:flutter/material.dart';

class Row_Column_Wrap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Row, Column, Wrap",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(6, (index) {
                    return Container(
                      margin: EdgeInsets.only(right: 10),
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color:
                            Colors.primaries[index % Colors.primaries.length],
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(width: 3, color: Colors.black),
                      ),
                      child: Icon(Icons.access_alarm, color: Colors.white),
                    );
                  }),
                ),
              ),
              SizedBox(height: 20),
              Column(
                children: List.generate(6, (index) {
                  return Container(
                    width: width,
                    height: 100,
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      color: Colors
                          .primaries[(index + 3) % Colors.primaries.length],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 3, color: Colors.black),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "Box ${index + 1}",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  );
                }),
              ),
              SizedBox(height: 20),
              Wrap(
                spacing: 15,
                runSpacing: 15,
                children: List.generate(12, (index) {
                  return Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.primaries[index % Colors.primaries.length],
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(width: 3, color: Colors.black),
                    ),
                    child: Icon(Icons.star, color: Colors.white, size: 30),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
