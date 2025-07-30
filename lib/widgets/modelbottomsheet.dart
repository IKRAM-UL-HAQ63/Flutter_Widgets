import 'package:flutter/material.dart';
class ModelBottomSheet extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Center(
     child: ElevatedButton(onPressed: (){
       showModalBottomSheet(
         backgroundColor: Colors.lightGreen,
           context: context, builder: (context){
         return Column(
              mainAxisSize: MainAxisSize.min,
           children: [
             ListTile(title:  Text("Name: Shoes ",style: TextStyle(fontSize: 15),),
             leading:  Text("Product",style: TextStyle(fontSize: 20),),
             trailing: Icon(Icons.arrow_forward_ios),),
             ListTile(title:  Text("USD-99 ",style: TextStyle(fontSize: 15),),
               leading:  Text("Price:",style: TextStyle(fontSize: 20),),
               trailing: Icon(Icons.arrow_forward_ios),),
             ListTile(title:  Text("Running Shoes",style: TextStyle(fontSize: 15),),
               leading:  Text("Desc",style: TextStyle(fontSize: 20),),
               trailing: Icon(Icons.arrow_forward_ios),),
             TextButton(
               style: TextButton.styleFrom(
                  backgroundColor: Colors.pink,
                 foregroundColor: Colors.white,
                 overlayColor: Colors.black,
                 padding: EdgeInsets.only(left: 50,right: 50),
                 shape: RoundedRectangleBorder(
                   side: BorderSide(width: 3),
                   borderRadius: BorderRadius.circular(110)
                 )
         ),
                 onPressed: (){
                Navigator.of(context).pop();
             }, child: Text("Close",style: TextStyle(fontSize: 20),)),
             SizedBox(height: 10,)
           ],
         );
       });
     }, child: Text("Show Bottom Sheet")),
    );
  }
}
