import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:insta_ui/profileRow.dart';
import 'package:insta_ui/tabBar.dart';

import 'editProfileRow.dart';
import 'highlightRow.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProfileRow(),
            EditProfileRow(),
            HighlightRow(),
            TabBarRow(),
            // followersIcon(),
          ],
        ),
      ),
    ));
  }
}
