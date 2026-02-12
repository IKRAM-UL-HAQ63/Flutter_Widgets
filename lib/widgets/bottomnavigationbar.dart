import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _SimpleBottomNavState();
}

class _SimpleBottomNavState extends State<BottomNavBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Simple Bottom Nav',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),

      // Body changes based on selectedIndex
      body: Center(
        child: Text(_getPageName(), style: const TextStyle(fontSize: 30)),
      ),

      // BottomNavigationBar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex, // Which item is currently selected

        onTap: (index) {
          // When user taps an item
          setState(() {
            selectedIndex = index; // Update the selected index
          });
        },
        backgroundColor: Colors.black12,
        elevation: 10,

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home,), label: 'Home',),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }

  // Helper method to get page name
  String _getPageName() {
    if (selectedIndex == 0) {
      return '🏠 Home Page';
    } else if (selectedIndex == 1) {
      return '🔍 Search Page';
    } else {
      return '👤 Profile Page';
    }
  }
}
