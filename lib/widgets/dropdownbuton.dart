import 'package:flutter/material.dart';

class DropDownExample extends StatefulWidget{
  _DropDownButton createState()=> _DropDownButton();
}
class _DropDownButton extends State<DropDownExample>{
  String selectedValue="Pakistan";
  List<String> countries=["Pakistan","USA","India","China","Afghanistan"];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.indigoAccent,
       title: Text(
         "DropDown Button",
         style: TextStyle(
           color: Colors.black,
           fontWeight: FontWeight.bold,
           fontSize: 30,
         ),
       ),
       //backgroundColor: Colors.indigo,
       centerTitle: true,
     ),
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           DropdownButton(
             value: selectedValue,
               icon: Icon(Icons.arrow_drop_down),
               elevation: 16,
               iconSize: 32,
               underline: Container(height: 2,color: Colors.blue,),
               style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),
               items: countries.map((String value){
                 return DropdownMenuItem<String>(
                     value: value,
                     child: Text(value));
               }).toList(),
               onChanged: (String? newValue) {
             setState(() {
               selectedValue = newValue!;
             });
           }
             ),
           SizedBox(height: 20,),
           Text("You Selected :  $selectedValue ",style: TextStyle(fontSize: 20,),)
         ],
       ),
     ),
   );
  }
}