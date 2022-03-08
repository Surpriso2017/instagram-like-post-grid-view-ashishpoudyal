import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:insta_ui/profileRow.dart';
import 'package:insta_ui/screen/bottom_nav-bar_screen.dart';
import 'package:insta_ui/tabBar.dart';

import 'editProfileRow.dart';
import 'highlightRow.dart';

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _pageController = PageController();

  int _currentTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0XFFF8faf8),
          elevation: 1.0,
          centerTitle: true,
          leading: Icon(Icons.keyboard_return),
          title: Text(
            "ashishpoudyal",
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            Icon(Icons.ac_unit),
            Icon(Icons.menu),
          ],
        ),
        body: PageView(
          // physics: NeverScrollableScrollPhysics(),
          onPageChanged: (pageindex) {
            _currentTabIndex = pageindex;
            setState(() {});
          },
          controller: _pageController,
          children: [
            Text("home screen"),
            Text("search screen"),
            Text("plus screen"),
            Text("shop screen"),
            Column(
              children: [
                ProfileRow(),
                EditProfileRow(),
                HighlightRow(),
                TabBarRow(),
                // followersIcon(),
              ],
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            onTap: (index) {
              _currentTabIndex = index;

              setState(() {});
              print("current index is $_currentTabIndex");
              _pageController.animateToPage(index,
                  duration: Duration(seconds: 1), curve: Curves.ease);
            },
            selectedIconTheme: IconThemeData(color: Colors.purple, size: 40),
            currentIndex: _currentTabIndex,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "",
                backgroundColor: Colors.green,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: "",
                backgroundColor: Colors.green,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add),
                label: "",
                backgroundColor: Colors.green,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shop),
                label: "",
                backgroundColor: Colors.green,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "",
                backgroundColor: Colors.green,
              ),
            ]),
      ),
    ));
  }
}
