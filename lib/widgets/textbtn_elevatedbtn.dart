import 'package:flutter/material.dart';
class Textbtn_Elevbtn extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Padding(
     padding: const EdgeInsets.all(20),
     child: Column(
       children: [
         SizedBox(
           width: double.infinity,
           child: TextButton.icon(
             icon: Icon(Icons.cancel),
             label: Text("Cancel"),
             style: TextButton.styleFrom(
               backgroundColor: Colors.pinkAccent,
               foregroundColor: Colors.white,
               padding: EdgeInsets.symmetric(vertical: 15),
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(12),
                 side: BorderSide(color: Colors.black, width: 2),
               ),
             ),
             onPressed: () {
               print("Cancel button pressed");
             },
           ),
         ),
         SizedBox(height: 20),

         // ElevatedButton - Full Width
         SizedBox(
           width: double.infinity,
           child: ElevatedButton.icon(
             icon: Icon(Icons.check_circle_outline),
             label: Text("Submit"),
             style: ElevatedButton.styleFrom(
               overlayColor: Colors.red,
               backgroundColor: Colors.indigo,
               foregroundColor: Colors.white,
               padding: EdgeInsets.symmetric(vertical: 15),
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(12),
                 side: BorderSide(color: Colors.black, width: 2),
               ),
             ),
             onPressed: () {
               print("Submit button pressed");
             },
           ),
         ),
         SizedBox(height: 20),

         // Row with Buttons
         Row(
           children: [
             Expanded(
               child: TextButton.icon(
                 icon: Icon(Icons.settings),
                 label: Text("Settings"),
                 style: TextButton.styleFrom(
                   backgroundColor: Colors.orange,
                   foregroundColor: Colors.white,
                   shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(10),
                       side: BorderSide(color: Colors.black,width: 2)
                   ),
                 ),
                 onPressed: () {},
               ),
             ),
             SizedBox(width: 10),
             Expanded(
               child: ElevatedButton.icon(
                 icon: Icon(Icons.login),
                 label: Text("Login"),
                 style: ElevatedButton.styleFrom(
                   backgroundColor: Colors.green,
                   foregroundColor: Colors.white,
                   shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(10),
                       side: BorderSide(width: 2,color: Colors.black)
                   ),
                 ),
                 onPressed: () {},
               ),
             ),
           ],
         )
       ],
     ),
   );
  }
}