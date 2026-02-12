import 'package:flutter/material.dart';
import 'package:new_project/UI Clone/TikTok UI/util/post_template.dart';

class Post3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      username: "IMRAN-KHAN",
      videoDescription: "I'm ex-Prime minister of PAKISTAN ",
      numberOfLikes: "8.9M",
      numberOfComments: "994K",
      numberOfSaved: "899K",
      numberOfShare: "870K",
      hastages: "#PAKISTAN  #PM  #Cricket  #IK",
      userPost: Image.asset("assets/Images/img13.jpg"),
    );
  }
}
