import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImagesWidgets extends StatefulWidget {
  const ImagesWidgets({super.key});

  @override
  State<ImagesWidgets> createState() => _ImagesWidgetsState();
}

class _ImagesWidgetsState extends State<ImagesWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Image Widgets",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.indigo,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              children: [
                Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black87, width: 3),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.red,
                        blurRadius: 15,
                        spreadRadius: 5,
                      ),
                    ],
                    image: DecorationImage(
                      image: AssetImage("assets/Images/img11.jpg"),
                      fit: BoxFit.cover,
                    ),
                    color: Colors.lightGreen,
                  ),
                ),
                SizedBox(height: 50),
                Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black87, width: 3),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.red,
                        blurRadius: 15,
                        spreadRadius: 5,
                      ),
                    ],
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://wallpapers.com/images/hd/cool-profile-picture-awled9dwo4qq2yv2.jpg",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 50),
                Container(
                  child: CachedNetworkImage(
                    imageUrl:
                        "https://tse1.mm.bing.net/th/id/OIP.WiiIweT7xiUq0B9R9z1CLQHaFj?w=233&h=180&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3",
                    placeholder: (context, url) =>
                        Center(child: CircularProgressIndicator()),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                    fit: BoxFit.cover,
                  ),
                  padding: EdgeInsets.all(3),
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black87, width: 3),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.red,
                        blurRadius: 15,
                        spreadRadius: 5,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
