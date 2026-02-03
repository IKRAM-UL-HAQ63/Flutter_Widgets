import 'package:flutter/material.dart';

class Review2 extends StatelessWidget {
  const Review2({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Review"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsetsGeometry.all(10),
                height: h,
                width: w,
                color: Colors.yellow,
                child: Icon(Icons.timer, color: Colors.red, size: 50),
              ),
              Container(
                margin: EdgeInsetsGeometry.all(10),
                height: h,
                width: w,
                color: Colors.black,
                child: Icon(Icons.location_city, color: Colors.red, size: 50),
              ),
              Container(
                margin: EdgeInsetsGeometry.all(10),
                height: h,
                width: w,
                color: Colors.purple,
                child: Icon(Icons.person, color: Colors.white, size: 50),
              ),
              Container(
                margin: EdgeInsetsGeometry.all(20),
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.deepPurple,
                ),
                child: Icon(Icons.alarm, color: Colors.red, size: 50),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(12, (index) {
                    return Container(
                      width: 70,
                      height: 70,
                      margin: EdgeInsetsGeometry.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.circular(10),
                        color:
                            Colors.primaries[index % Colors.primaries.length],
                      ),
                      child: Icon(Icons.key, color: Colors.white),
                    );
                  }),
                ),
              ),
              Wrap(
                spacing: 20,
                runSpacing: 10,
                children: List.generate(20, (index){
                  return Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.primaries[index  % Colors.primaries.length],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black, width: 2)
                    ),
                    child: Icon(Icons.mobile_off, color: Colors.white),
                  );
                }),
              ),
              Container(
                width: w,
                height: h,
                color: Colors.black,
                alignment: Alignment.centerRight,
                margin: EdgeInsets.all(10),
                child: Container(
                  margin: EdgeInsets.only(right: 18),
                  width: 200,
                  height: 200,
                  color: Colors.white,

                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
