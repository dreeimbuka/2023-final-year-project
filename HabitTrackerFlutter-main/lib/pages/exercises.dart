// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Exercises extends StatefulWidget {
  const Exercises({super.key});

  @override
  State<Exercises> createState() => _Exercises();
}

class _Exercises extends State<Exercises> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 235, 216, 239),
      appBar: AppBar(
        title: const Text('Exercises'),
        backgroundColor: Color.fromARGB(255, 198, 138, 236),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: const Color.fromARGB(255, 235, 216, 239),
        color: const Color.fromARGB(255, 198, 138, 236),
        animationDuration: const Duration(milliseconds: 400),
        onTap: (index) {
          print(index);
        },
        height: 60,
        items: const [
          Icon(Icons.home),
          Icon(Icons.track_changes),
          Icon(Icons.chat),
          Icon(Icons.person),
        ],
      ),
      body: SingleChildScrollView(),
    );
  }
}
