import 'package:flutter/material.dart';
import 'Pages/home.dart';
import 'Pages/inbox.dart';
import 'Pages/plus.dart';
import 'Pages/profile.dart';
import 'Pages/serarch.dart';

class TikTok_UI extends StatefulWidget {
  const TikTok_UI({super.key});

  @override
  State<TikTok_UI> createState() => _TikTok_UIState();
}

class _TikTok_UIState extends State<TikTok_UI> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    HomePage(),
    SearchPage(),
    PlusPage(),
    InboxPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.white,
              size: 30,
              fontWeight: FontWeight.bold,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, size: 30, fontWeight: FontWeight.bold),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_box_rounded,
              size: 35,
              fontWeight: FontWeight.bold,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat_bubble_rounded,
              size: 30,
              fontWeight: FontWeight.bold,
            ),
            label: "Inbox",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, size: 30, fontWeight: FontWeight.bold),
            label: "Profile",
          ),
        ],
      ),
      body: SafeArea(child: Center(child: _pages[_selectedIndex])),
    );
  }
}
