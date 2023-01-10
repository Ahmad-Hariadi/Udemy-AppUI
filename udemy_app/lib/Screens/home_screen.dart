import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:udemy_app/Screens/Homescreens/account.dart';
import 'package:udemy_app/Screens/Homescreens/featured.dart';
import 'package:udemy_app/Screens/Homescreens/my_courses.dart';
import 'package:udemy_app/Screens/Homescreens/search.dart';
import 'package:udemy_app/Screens/Homescreens/wishlist.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController pageController = new PageController();
  int currentIndex = 0;

  void onTap(int page) {
    setState(() {
      currentIndex - page;
    });
    pageController.jumpToPage(page);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      body: PageView(
        onPageChanged: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        controller: pageController,
        children: [
          Featured(),
          Search(),
          MyCourses(),
          WishList(),
          Account(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        backgroundColor: Colors.grey.shade900,
        selectedIconTheme: IconThemeData(color: Colors.lightBlue),
        unselectedIconTheme: IconThemeData(color: Colors.white),
        unselectedLabelStyle: TextStyle(
          color: Colors.white,
        ),
        unselectedItemColor: Colors.white,
        iconSize: 26.0,
        selectedFontSize: 14.0,
        unselectedFontSize: 12.0,
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Featured',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_video),
            label: 'My Courses',
          ),
          BottomNavigationBarItem(
            icon: Icon(EvaIcons.heartOutline),
            label: 'Whistlist',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
