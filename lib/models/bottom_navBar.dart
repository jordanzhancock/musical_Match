import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int current_index = 0;
  List<Widget> body = const [
    Icon(Icons.face_outlined),
    Icon(Icons.music_note),
    Icon(Icons.search)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: body[current_index]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: current_index,
        onTap: ((int newIndex) {
          setState(() {
            current_index = newIndex;
          });
        }),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.face_outlined)),
          BottomNavigationBarItem(icon: Icon(Icons.music_note)),
          BottomNavigationBarItem(icon: Icon(Icons.search))
        ],
      ),
    );
  }
}
