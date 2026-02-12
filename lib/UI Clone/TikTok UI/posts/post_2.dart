import 'package:flutter/material.dart';
import 'package:new_project/UI Clone/TikTok UI/util/post_template.dart';

class Post2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      username: "Elon Musk",
      videoDescription: "I'am the CEO of X and Star Links",
      numberOfLikes: "3.1M",
      numberOfComments: "54K",
      numberOfSaved: "81K",
      numberOfShare: "70K",
      hastages: "#X  #StarLinks  #ElonMusk  #Space",
      userPost: Image.asset("assets/Images/img12.jpg",
      fit: BoxFit.cover,),
    );
  }
}
