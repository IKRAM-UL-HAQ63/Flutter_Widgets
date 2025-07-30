import 'package:flutter/material.dart';
class tabBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 2,
        length: 12,
        child: Scaffold(
          appBar: AppBar(
            title:Text("TabBar"),
            centerTitle: true,
            backgroundColor: Colors.blue,
            bottom: TabBar(
              padding: EdgeInsets.only(bottom: 5,left: 5),
              isScrollable: true,
              indicatorColor: Colors.lightGreen,
            indicatorWeight: 5,
            tabs: [
              Tab(icon: Icon(Icons.message,size: 30,),text: "Message",),
              Tab(icon: Icon(Icons.phone,size: 30,),text: "Phone",),
              Tab(icon: Icon(Icons.chat,size: 30,),text: "Chat",),
              Tab(icon: Icon(Icons.person,size: 30,),text: "Profile",),
              Tab(icon: Icon(Icons.message,size: 30,),text: "Message",),
              Tab(icon: Icon(Icons.phone,size: 30,),text: "Phone",),
              Tab(icon: Icon(Icons.chat,size: 30,),text: "Chat",),
              Tab(icon: Icon(Icons.person,size: 30,),text: "Profile",),
              Tab(icon: Icon(Icons.message,size: 30,),text: "Message",),
              Tab(icon: Icon(Icons.phone,size: 30,),text: "Phone",),
              Tab(icon: Icon(Icons.chat,size: 30,),text: "Chat",),
              Tab(icon: Icon(Icons.person,size: 30,),text: "Profile",)
            ]),
          ),
          body:TabBarView(

              children: [
            Container(child: Center(child: Text("Message",style: TextStyle(fontSize: 20),),),),
            Container(child: Center(child: Text("Phone",style: TextStyle(fontSize: 20),),),),
            Container(child: Center(child: Text("Chat",style: TextStyle(fontSize: 20),),),),
            Container(child: Center(child: Text("Profile",style: TextStyle(fontSize: 20),),),),
                Container(child: Center(child: Text("Message",style: TextStyle(fontSize: 20),),),),
                Container(child: Center(child: Text("Phone",style: TextStyle(fontSize: 20),),),),
                Container(child: Center(child: Text("Chat",style: TextStyle(fontSize: 20),),),),
                Container(child: Center(child: Text("Profile",style: TextStyle(fontSize: 20),),),),
                Container(child: Center(child: Text("Message",style: TextStyle(fontSize: 20),),),),
                Container(child: Center(child: Text("Phone",style: TextStyle(fontSize: 20),),),),
                Container(child: Center(child: Text("Chat",style: TextStyle(fontSize: 20),),),),
                Container(child: Center(child: Text("Profile",style: TextStyle(fontSize: 20),),),)
          ]
          ) ,
        )
    );
  }
}