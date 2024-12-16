import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_ui/screens/Home/heartscreen.dart';
import 'package:instagram_ui/screens/Home/homescreen.dart';
import 'package:instagram_ui/screens/Home/postscreen.dart';
import 'package:instagram_ui/screens/Home/profilescreen.dart';
import 'package:instagram_ui/screens/Home/searchscreen.dart';
import 'package:instagram_ui/widgets/UiHelper.dart';

class Bottomnavscreen extends StatefulWidget {
  @override
  State<Bottomnavscreen> createState() => _BottomnavscreenState();
}

class _BottomnavscreenState extends State<Bottomnavscreen> {
  int currentIndex = 0;
  List<Widget> pages = [
    Homescreen(),
    Searchscreen(),
    Postscreen(),
    Heartscreen(),
    Profilescreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: pages,
        index: currentIndex,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        // selectedIconTheme: IconThemeData(color: Color(0XFFFFFFFF)),
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.plus_app), label: 'Post'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.heart), label: 'Heart'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.profile_circled), label: 'Profile'),
        ],
      ),
    );
  }
}
