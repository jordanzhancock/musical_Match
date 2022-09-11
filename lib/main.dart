import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:musical_matcher/screens/home_page.dart';
import 'package:musical_matcher/screens/login_register_page.dart';
import 'package:musical_matcher/models/constants.dart';
import 'package:musical_matcher/screens/messages_screen.dart';
import 'package:musical_matcher/screens/profile_screen.dart';
import 'package:musical_matcher/screens/search_screen.dart';
import 'package:musical_matcher/screens/settings.dart';
import 'package:musical_matcher/screens/widget_tree.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          backgroundColor: Colors.grey[300],
          colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.grey,
              primary: Colors.black,
              secondary: kGoldenColor,
              tertiary: Colors.grey[200])),
      home: const WidgetTree(),
      routes: {
        'ProfileScreen': (context) => ProfileScreen(),
        'HomePage': (context) => HomePage(),
        'SearchScreen': (context) => SearchScreen(),
        'MessagesScreen': (context) => MessagesScreen(),
        'SettingsScreen': (context) => SettingsScreen()
      },
    );
  }
}
