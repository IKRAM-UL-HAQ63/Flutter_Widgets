import 'package:flutter/material.dart';

class Dismissible_SnackBar extends StatefulWidget {
  _Dismissible_SnackBar createState() => _Dismissible_SnackBar();
}

class _Dismissible_SnackBar extends State<Dismissible_SnackBar> {
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
    Icons.login,
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
    "Login",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        title: Text(
          "My DashBoard",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        //backgroundColor: Colors.indigo,
        centerTitle: true,
      ),
      drawer: Drawer(
        backgroundColor: Colors.blueGrey[100],
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
              accountName: Text("IKRAM-UL-HAQ"),
              accountEmail: Text("pakikram8@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/Images/img11.jpg"),
              ),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(width: 2, color: Colors.black54),
              ),
            ),
            Divider(thickness: 2),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8,
              ),
              child: Text(
                "Menu",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),

            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: arrIcons.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          "Menu item  ${arrNames[index]}  is Clicked!!",
                        ),
                        backgroundColor: Colors.black87,
                        behavior: SnackBarBehavior.floating,
                        duration: Duration(seconds: 3),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 3, color: Colors.black),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    );
                  },
                  child: Card(
                    child: ListTile(
                      trailing: Icon(Icons.arrow_forward_ios, size: 16),
                      leading: Icon(arrIcons[index]),
                      title: Text("${arrNames[index]}"),
                    ),
                  ),
                );
              },
            ),
            Divider(height: 5, thickness: 5, color: Colors.red),
          ],
        ),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Dismissible(
              onDismissed: (direction) {
                if (direction == DismissDirection.startToEnd) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("${items[index]} is Dismissed!!"),
                      backgroundColor: Colors.red,
                      duration: Duration(seconds: 3),
                      behavior: SnackBarBehavior.floating,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(color: Colors.black, width: 3),
                      ),
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("${items[index]} is Dismissed!!"),
                      backgroundColor: Colors.green,
                      duration: Duration(seconds: 3),
                      behavior: SnackBarBehavior.floating,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(color: Colors.black, width: 3),
                      ),
                    ),
                  );
                }
              },
              key: Key(items[index]),
              background: Container(color: Colors.red),
              secondaryBackground: Container(color: Colors.green),
              child: Card(
                child: ListTile(
                  title: Text(arrNames[index]),
                  leading: Container(
                    color: Colors.pink,

                    child: Icon(arrIcons[index], color: Colors.white, size: 20),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
