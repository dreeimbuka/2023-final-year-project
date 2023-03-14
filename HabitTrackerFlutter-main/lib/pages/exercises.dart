import 'package:flutter/material.dart';

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
      body: SingleChildScrollView(),
    );
  }
}
