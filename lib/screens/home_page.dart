import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:musical_matcher/models/constants.dart';
import 'package:musical_matcher/screens/profile_screen.dart';
import 'package:musical_matcher/screens/search_screen.dart';
import 'package:musical_matcher/screens/settings.dart';

import '../models/auth.dart';
import 'messages_screen.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // current index for BottomNvigationBar
  int current_index = 0;

  List<Widget> body = const [
    SearchScreen(),
    MessagesScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: IconButton(
          onPressed: (() {
            setState(() {
              Navigator.pushNamed(context, 'SettingsScreen');
            });
          }),
          icon: const Icon(Icons.settings),
        ),
      ),
      appBar: AppBar(
        title: const Center(child: Text('Musical Match')),
      ),
      body: IndexedStack(
        index: current_index,
        children: body,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: kGoldenColor,
        unselectedItemColor: Colors.grey[600],
        currentIndex: current_index,
        onTap: (int newIndex) {
          setState(() {
            current_index = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(
              label: 'Search',
              icon: Icon(
                Icons.search,
              )),
          BottomNavigationBarItem(
              label: 'Messages',
              icon: Icon(
                Icons.music_note,
              )),
          BottomNavigationBarItem(
              label: 'Profile',
              icon: Icon(
                Icons.face_outlined,
              ))
        ],
      ),
    );
  }
}
