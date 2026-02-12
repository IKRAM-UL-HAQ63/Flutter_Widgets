import 'package:flutter/material.dart';
import 'package:new_project/UI Clone/TikTok UI/util/post_template.dart';

class Post1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      username: "IKRAM-UL-HAQ",
      videoDescription: "Flutter Mobile Applications Developer",
      numberOfLikes: "2.3M",
      numberOfComments: "564K",
      numberOfSaved: "89K",
      numberOfShare: "670K",
      hastages: "#Flutter  #Dart  #UI  #APP",
      userPost: Image.asset("assets/Images/img11.jpg",fit: BoxFit.fill,),
    );
  }
}
