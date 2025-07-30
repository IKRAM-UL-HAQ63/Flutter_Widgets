import 'package:flutter/material.dart';
class snackBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
      ),
          onPressed: (){
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Successfully Submitted !!"),
                  duration: Duration(seconds: 3),
                  behavior: SnackBarBehavior.floating,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 3,color: Colors.yellowAccent),
                    borderRadius: BorderRadius.circular(15)
                  ),
                  action: SnackBarAction(
                      label: "Undo!",
                      backgroundColor: Colors.pink,
                      textColor: Colors.white,
                      onPressed: (){
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Undo Action is done!"),
                              duration: Duration(seconds: 3),
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(width: 3,color: Colors.red),
                                  borderRadius: BorderRadius.circular(35)
                              ),)
                        );
                      }),
                )
            );
          }, child: Text("Submit")),
    );
  }
}
