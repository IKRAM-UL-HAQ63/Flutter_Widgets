import 'package:flutter/material.dart';

import '../util/profiletab1.dart';
import '../util/profiletab2.dart';
import '../util/profiletab3.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("IKRAM-UL-HAQ", style: TextStyle(color: Colors.black)),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Icon(Icons.person_add, color: Colors.black),
          actions: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Icon(Icons.menu, color: Colors.black),
            ),
          ],
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/Images/img11.jpg"),
                  fit: BoxFit.cover,
                ),
                shape: BoxShape.circle,
                color: Colors.grey[200],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "@IKRAM-UL-HAQ",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: Column(
                      children: [
                        Text(
                          "54",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Following",
                          style: TextStyle(color: Colors.grey[800], fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      children: [
                        Text(
                          "868K",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Follower",
                          style: TextStyle(color: Colors.grey[800], fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        Text(
                          "708M",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Likes",
                          style: TextStyle(color: Colors.grey[800], fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 40),
                    child: Text(
                      "Edit Profile",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Icon(Icons.camera_alt,color: Colors.grey[800],)
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(Icons.bookmark_border,color: Colors.grey[800],)
                  ),
                ),
              ],
            ),
            SizedBox(height: 15,),
            Text("Bio here",style: TextStyle(color: Colors.grey[700]),),
            TabBar(tabs: [
              Tab(
                icon: Icon(Icons.grid_on_sharp,color: Colors.black,),
              ),
              Tab(
                icon: Icon(Icons.favorite,color: Colors.black,),
              ),
              Tab(
                icon: Icon(Icons.lock_outline_rounded,color: Colors.black,),
              )
            ]),
            Expanded(child: TabBarView(children: [
              FirstTab(),
              SecondTab(),
              ThirdTab(),
            ]))
          ],
        ),
      ),
    );
  }
}
