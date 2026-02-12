import 'package:flutter/material.dart';

class ModelBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        title: Text(
          "Bottom Sheet",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        //backgroundColor: Colors.indigo,
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.indigo,
            foregroundColor: Colors.white,
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 20),
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 3),
              borderRadius: BorderRadius.circular(110),
            ),
            elevation: 10,
            shadowColor: Colors.red,
            textStyle: TextStyle(fontSize: 25),
            overlayColor: Colors.yellow,
          ),
          onPressed: () {
            showModalBottomSheet(
              backgroundColor: Colors.white54,
              context: context,
              builder: (context) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Card(
                      child: ListTile(
                        title: Text(
                          "Name: Shoes ",
                          style: TextStyle(fontSize: 15),
                        ),
                        leading: Text(
                          "Product",
                          style: TextStyle(fontSize: 20),
                        ),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        title: Text("USD-99 ", style: TextStyle(fontSize: 15)),
                        leading: Text("Price:", style: TextStyle(fontSize: 20)),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        title: Text(
                          "Running Shoes",
                          style: TextStyle(fontSize: 15),
                        ),
                        leading: Text("Desc", style: TextStyle(fontSize: 20)),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.lightGreen,
                        foregroundColor: Colors.white,
                        overlayColor: Colors.black,
                        padding: EdgeInsets.only(left: 50, right: 50),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 3),
                          borderRadius: BorderRadius.circular(110),
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text("Close", style: TextStyle(fontSize: 20)),
                    ),
                    SizedBox(height: 10),
                  ],
                );
              },
            );
          },
          child: Text("Show Bottom Sheet"),
        ),
      ),
    );
  }
}
