import 'package:flutter/material.dart';
class Drawer_CircleAvator extends StatelessWidget{
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

  final List<String> arrNames = [
    "Profile",
    "Notifications",
    "Settings",
    "Messages",
    "Orders",
    "Cart",
    "Help",
    "Contact",
    "Logout",
    "Login"
  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[100],
      child: ListView(
        children: [
          // DrawerHeader(child: Column(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: [
          //     CircleAvatar(
          //     radius: 40,
          //       backgroundImage: NetworkImage("https://th.bing.com/th/id/OIP.kN8tEO6_wPf1PMEofLrdTgHaGh?o=7rm=3&rs=1&pid=ImgDetMain&o=7&rm=3"),),
          //     SizedBox(height: 10,),
          //     Text("IKRAM-RABIA",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)
          //   ],
          // )),
          UserAccountsDrawerHeader(
            accountName: Text("IKRAM-RABIA"),
            accountEmail: Text("pakikram8@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage("https://th.bing.com/th/id/OIP.kN8tEO6_wPf1PMEofLrdTgHaGh?o=7rm=3&rs=1&pid=ImgDetMain&o=7&rm=3"),
            ),
          ),

          Divider(thickness: 1,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
            child: Text("Menu", style: TextStyle(fontWeight: FontWeight.bold)),
          ),

          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: arrIcons.length,
              itemBuilder: (context,index){
              return InkWell(
                onTap: (){
                  Navigator.of(context).pop();
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Menu item  ${arrNames[index]}  is Clicked!!"),
                  backgroundColor: Colors.pink,
                    behavior: SnackBarBehavior.floating,
                    duration: Duration(seconds: 3),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 3,color: Colors.black),
                      borderRadius: BorderRadius.circular(15)
                    ),
                  ));
                },
                child: ListTile(
                  trailing: Icon(Icons.arrow_forward_ios,size: 16,),
                  leading: Icon(arrIcons[index]),
                  title: Text("${arrNames[index]}"),
                ),
              );
              }),
          Divider(height: 3,thickness: 3,),
        ],
      )
    );
  }
}