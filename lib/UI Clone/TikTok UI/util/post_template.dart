import 'package:flutter/material.dart';
import 'package:new_project/UI Clone/TikTok UI/util/button.dart';

class PostTemplate extends StatelessWidget {
  final String username;
  final String videoDescription;
  final String numberOfLikes;
  final String numberOfComments;
  final String numberOfSaved;
  final String numberOfShare;
  final String hastages;
  final userPost;
  PostTemplate({
    required this.username,
    required this.videoDescription,
    required this.numberOfLikes,
    required this.numberOfComments,
    required this.numberOfSaved,
    required this.numberOfShare,
    required this.hastages,
    required this.userPost,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            userPost,
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                alignment: Alignment(-1, 1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "@ " + username,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: videoDescription + "\n",
                            style: TextStyle(fontSize: 14),
                          ),
                          TextSpan(
                            text: hastages + "\n",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: "#fyp  #foryou ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                alignment: Alignment(1, 1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    MyButton(icon: Icons.favorite, number: numberOfLikes),
                    MyButton(icon: Icons.comment, number: numberOfComments),
                    MyButton(icon: Icons.bookmark_outlined, number: numberOfSaved),
                    MyButton(icon: Icons.share, number: numberOfShare),
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomLeft,
              child: Divider(color: Colors.grey, height: 15, thickness: 2),
            ),
          ],
        ),
      ),
    );
  }
}
