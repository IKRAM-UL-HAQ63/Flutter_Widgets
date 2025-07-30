import 'package:flutter/material.dart';
class BottomNavigBar extends StatefulWidget{
  _BotmNavBar createState()=>_BotmNavBar();
}
class _BotmNavBar extends State<BottomNavigBar>{
  int currentIndex=0;
  Widget? child;
  List<String> dummyNotes = [];

  @override
  Widget build(BuildContext context) {
    if (currentIndex == 0) {
      child = Text("--🏠Home-- You are Welcome", style: TextStyle(fontSize: 24));
    } else if (currentIndex == 1) {
      child = ElevatedButton(
        onPressed: () {
          setState(() {
            dummyNotes.add("Note #${dummyNotes.length + 1}");
          });
        },
        child: Text("Add Note"),
      );
    } else {
      child = ListView.builder(
        itemCount: dummyNotes.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(dummyNotes[index]),
              trailing: Icon(Icons.arrow_forward_ios),
              leading: Icon(Icons.star),
            ),
          );
        },
      );
    }
    return Scaffold(
    body: Center(child: child),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        backgroundColor: Colors.lightGreen,
        onTap: (index){
          setState((){
            currentIndex=index;
    });
    },
          items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.red,), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.note_add,color:Colors.red,), label: "Add Note"),
        BottomNavigationBarItem(icon: Icon(Icons.view_agenda,color:Colors.red,), label: "View Notes")
      ]),

    );

  }
}