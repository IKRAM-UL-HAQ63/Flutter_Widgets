import 'package:flutter/material.dart';
import 'package:new_project/UI Clone/TikTok UI/posts/post_1.dart';
import 'package:new_project/UI Clone/TikTok UI/posts/post_2.dart';
import 'package:new_project/UI Clone/TikTok UI/posts/post_3.dart';

class HomePage extends StatelessWidget {
  final _controller =PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.vertical,
        children: [
          Post1(),
          Post2(),
          Post3(),
        ],
      ),
    );
  }
}
