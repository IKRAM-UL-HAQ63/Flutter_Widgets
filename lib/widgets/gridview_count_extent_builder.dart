import 'package:flutter/material.dart';

class GridView_count_extent_builder extends StatelessWidget{
  final List<IconData> arrIcons = [
    Icons.person,
    Icons.notification_add,
    Icons.settings,
    Icons.message,
    Icons.delivery_dining,
    Icons.shopping_cart,
    Icons.help,
    Icons.phone,
    Icons.login,
    Icons.logout,
    Icons.access_alarm,
    Icons.accessibility
  ];

  @override
  Widget build(BuildContext context) {
    var color=Colors.primaries;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text("GridView.count Section",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            SizedBox(
              height: 200,
              child: GridView.count(crossAxisCount: 3,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: List.generate(6, (index){
                  return Container(
                        color: color[index%color.length],
                        child: Icon(arrIcons[index],color: Colors.white,size: 30,),
                      );
                })
              )
            ),
            SizedBox(height: 50,),
            Text("GridView.extent Section",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            SizedBox(
              height: 200,
              child: GridView.extent(maxCrossAxisExtent: 200,
              crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: List.generate(8, (index){
                  return Container(
                    color: color[index%color.length],
                    child: Icon(arrIcons[index],color: Colors.white,size: 30,),
                  );
                }),
              ),
            ),
            SizedBox(height: 50,),
            Text("GridView.builder Section",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            SizedBox(
              height: 200,
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
                  itemCount: arrIcons.length,
                  itemBuilder: (context,index){
                return Container(
                  margin: EdgeInsets.all(5),
                  color: color[(index+2)%color.length],
                  child: Icon(arrIcons[index],color: Colors.white,size: 30,),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}