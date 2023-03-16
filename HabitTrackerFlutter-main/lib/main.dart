import 'package:flutter/material.dart';
import 'package:mhapp/firebase_options.dart';
import 'package:mhapp/pages/authentication.dart';
import 'package:mhapp/pages/habit.dart';
import 'package:mhapp/pages/home_page.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mhapp/pages/profile.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  // initialize hive
  await Hive.initFlutter();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

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
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        color: const Color.fromARGB(255, 198, 138, 236),
        animationDuration: const Duration(milliseconds: 600),
        items: items,
        height: 60,
        onTap: (index) => setState(() => this.index = index),
      ),
    );
  }
}

// Future<void> Guides() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(MyApp());
// }
