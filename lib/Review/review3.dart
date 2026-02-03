import 'package:flutter/material.dart';

class Review3 extends StatelessWidget {
  const Review3({super.key});

  @override
  Widget build(BuildContext context) {
    // return Row(
    //   children: [
    //     Expanded(child: Container(width: 50, height: 50, color: Colors.red)),
    //     SizedBox(width: 20,),
    //     Expanded(child: Container(width: 50, height: 50, color: Colors.blue)),
    //   ],
    // );
    return Scaffold(
      appBar: AppBar(
        title: Text("Review"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // WRAP EXAMPLE
            Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Wrap Example:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Wrap(
                spacing: 8, // horizontal space between items
                runSpacing: 10, // vertical space between rows
                children: [
                  Chip(label: Text('Flutter'),backgroundColor: Colors.purpleAccent[100],),
                  Chip(label: Text('Dart'),backgroundColor: Colors.green[100]),
                  Chip(label: Text('Mobile Development'),backgroundColor: Colors.red[100]),
                  Chip(label: Text('UI/UX'),backgroundColor: Colors.yellow[100]),
                  Chip(label: Text('State Management'),backgroundColor: Colors.pinkAccent[100]),
                  Chip(label: Text('Widgets'),backgroundColor: Colors.orangeAccent[100]),
                  Chip(label: Text('Animation'),backgroundColor: Colors.blueAccent[100]),
                ],
              ),
            ),

            SizedBox(height: 30),

            // GRIDVIEW EXAMPLE
            Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'GridView Example:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 400, // Give it a fixed height
              child: GridView.count(
                crossAxisCount: 3, // 3 columns
                crossAxisSpacing: 12,
                mainAxisSpacing: 6,
                padding: EdgeInsets.all(16),
                children: List.generate(12, (index) {
                  return Container(
                    color: Colors.blue[(index % 9 + 1) * 100],
                    child: Center(
                      child: Text(
                        'Item $index',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
