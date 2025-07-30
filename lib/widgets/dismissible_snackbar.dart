import 'package:flutter/material.dart';

class Dismissible_SnackBar extends StatefulWidget{
  _Dismissible_SnackBar createState()=> _Dismissible_SnackBar();
}
class _Dismissible_SnackBar extends State<Dismissible_SnackBar>{
  List<String> items = List.generate(10, (index) => 'Item ${index + 1}');
  final List<IconData> arrIcons = [
    Icons.person,
    Icons.notification_add,
    Icons.settings,
    Icons.message,
    Icons.delivery_dining,
    Icons.shopping_cart,
    Icons.help,
    Icons.phone,
    Icons.logout,
    Icons.login
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: items.length,
        itemBuilder: (context,index){
          return Dismissible(
              onDismissed: (direction) {
                if(direction== DismissDirection.startToEnd){
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("${items[index]} is Dismissed!!"),
                    backgroundColor: Colors.red,
                    duration: Duration(seconds: 3),
                    behavior: SnackBarBehavior.floating,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: BorderSide(color: Colors.black,width: 3)
                    ),
                  ));
                }else{
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("${items[index]} is Dismissed!!"),
                    backgroundColor: Colors.green,
                    duration: Duration(seconds: 3),
                    behavior: SnackBarBehavior.floating,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(color: Colors.black,width: 3)
                    ),
                  ));
                }
              },
              key: Key(items[index]),
              background: Container(color: Colors.red,),
              secondaryBackground: Container(color: Colors.green,),
              child: Card(
                child: ListTile(
                  title: Text(items[index]),
                  leading: Container(
                      color: Colors.pink,

                      child: Icon(arrIcons[index],color: Colors.white,size: 20,)),
                ),
              ));
        });
  }
}