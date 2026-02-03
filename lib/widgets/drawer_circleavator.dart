import 'package:flutter/material.dart';

class Drawer_CircleAvator extends StatelessWidget {
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
    var width = MediaQuery.of(context).size.width;
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
                backgroundImage: NetworkImage(
                  "https://wallpapers.com/images/hd/cool-profile-picture-awled9dwo4qq2yv2.jpg",
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(width: 2,color: Colors.black54)
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
            Divider(height: 5, thickness: 5,color: Colors.red,),
          ],
        ),
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
                    return InkWell(
                      onTap:(){

                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("Clicked on Row Widget item ${index+1}"),
                          backgroundColor: Colors.black87,
                          behavior: SnackBarBehavior.floating,
                          duration: Duration(seconds: 3),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 3, color: Colors.black),
                              borderRadius: BorderRadius.circular(15),
                        )));
                      },
                      child: Container(
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
                      ),
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
