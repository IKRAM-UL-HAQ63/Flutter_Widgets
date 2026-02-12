import 'package:flutter/material.dart';

class AlertDialog_Drawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        title: Text(
          "Alert Dialog",
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
        backgroundColor: Colors.grey[100],
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 3,color: Colors.red)
                ),
                accountName: Text("IKRAB"),
                accountEmail: Text("pakikram8@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                    "https://th.bing.com/th/id/OIP.kN8tEO6_wPf1PMEofLrdTgHaGh?o=7rm=3&rs=1&pid=ImgDetMain&o=7&rm=3",
                  ),
                ),
              ),
            ),
            Divider(thickness: 2, height: 3),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text(
                "Menu",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Column(
              children: [
                ListTile(
                  leading: Icon(Icons.add),
                  title: Text("Add"),
                  trailing: Icon(Icons.arrow_forward_ios, size: 16),
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Profile"),
                  trailing: Icon(Icons.arrow_forward_ios, size: 16),
                ),
                ListTile(
                  leading: Icon(Icons.notification_add),
                  title: Text("Notifications"),
                  trailing: Icon(Icons.arrow_forward_ios, size: 16),
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("Setting"),
                  trailing: Icon(Icons.arrow_forward_ios, size: 16),
                ),
                ListTile(
                  leading: Icon(Icons.message),
                  title: Text("Messeges"),
                  trailing: Icon(Icons.arrow_forward_ios, size: 16),
                ),
                ListTile(
                  leading: Icon(Icons.help),
                  title: Text("Help"),
                  trailing: Icon(Icons.arrow_forward_ios, size: 16),
                ),
                ListTile(
                  leading: Icon(Icons.phone),
                  title: Text("Phone"),
                  trailing: Icon(Icons.arrow_forward_ios, size: 16),
                ),
                Divider(height: 3, thickness: 3),
                InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Logout"),
                          content: Text("Do you really want to Logout!!"),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                                Navigator.of(context).pop();
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Center(
                                      child: Text(
                                        "You are Logout Successfully!!",style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                    backgroundColor: Colors.black87,
                                    duration: Duration(seconds: 3),
                                    behavior: SnackBarBehavior.floating,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      side: BorderSide(width: 3),
                                    ),
                                  ),
                                );
                              },
                              child: Text("Confirm"),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text("Cancel"),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: ListTile(
                    leading: Icon(Icons.logout),
                    title: Text("Logout"),
                    trailing: Icon(Icons.arrow_forward_ios, size: 16),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          width: 300,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.lightGreen,
            border: Border.all(width: 3,color: Colors.brown),
            boxShadow: [
              BoxShadow(
                color: Colors.orangeAccent,
                blurRadius: 15,
                spreadRadius: 5

              )
            ],
          ),
          child: Text(
            "Alert Dialog",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 50,
            ),
          ),
        ),
      ),
    );
  }
}
