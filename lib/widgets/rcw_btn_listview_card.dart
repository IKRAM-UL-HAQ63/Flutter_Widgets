import 'package:flutter/material.dart';
class RCW_btn_ListView_Card extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var arrIcons=[Icons.add,Icons.email,Icons.location_pin,Icons.phone,Icons.logout,Icons.login];
    var arrIcon=[Icons.person,Icons.notification_add,Icons.settings,Icons.message,Icons.gif_box];
    var arrName=["Profile","Notifications","Setting","Messages","Orders"];
    return Scaffold(
      appBar: AppBar(
        title: Text("My DashBoard",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.indigo,
        centerTitle:true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(
              spacing: 5,
              runSpacing: 15,
              children:
                List.generate(6, (index){
                  return Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.primaries [index%Colors.primaries.length],
                      border: Border.all(color: Colors.black,width: 2),
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Icon(arrIcons[index],size: 40,color: Colors.white,)
                  );
                })
            ),
            SizedBox(height: 10,),
            Text("Menu Options", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            ListView.builder(
              shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: arrName.length,
                itemBuilder: (context,index){
                  return Card(
                    child: ListTile(
                      leading: Icon(arrIcon[index]),
                      title: Text("${arrName[index]}"),
                    ),
                  );
                }),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton.icon(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.pink,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.black,width: 2)
                    )
                  ),
                    onPressed: (){},
                    label: Text("Cancel"),
                  icon: Icon(Icons.cancel),
                ),
                ElevatedButton.icon(
                  style:ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.pink,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(width: 2)
                    )
                  ),
                    onPressed: (){},
                    icon: Icon(Icons.check),
                    label: Text("Submit")
                ),
              ],
            )
          ],
        )),
      ),
    );
  }
}