import 'package:flutter/material.dart';
import 'package:mhapp/pages/habit.dart';
import 'package:mhapp/pages/guides.dart';
import 'package:mhapp/pages/habit.dart';
import 'package:mhapp/pages/home_page.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mhapp/pages/profile.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() async {
  // initialize hive
  await Hive.initFlutter();

  // open a box
  await Hive.openBox("Habit_Database");

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
      theme: ThemeData(primarySwatch: Colors.deepPurple),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;
  final screens = [
    HomePage(),
    Habit(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Icon(Icons.home),
      Icon(Icons.track_changes),
      Icon(Icons.person),
    ];

    return Scaffold(
      body: screens[index],
      extendBody: true,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        color: const Color.fromARGB(255, 198, 138, 236),
        animationDuration: const Duration(milliseconds: 400),
        items: items,
        height: 60,
        onTap: (index) => setState(() => this.index = index),
      ),
    );
  }
}
