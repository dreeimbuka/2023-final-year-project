import 'package:flutter/material.dart';

class Guides extends StatefulWidget {
  const Guides({super.key});

  @override
  State<Guides> createState() => _HomePageState();
}

class _HomePageState extends State<Guides> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 235, 216, 239),
        appBar: AppBar(
          title: const Text('Guides'),
          backgroundColor: Color.fromARGB(255, 198, 138, 236),
        ),
        body: Row(
          children: [
            Container(
              color: Colors.black,
            )
          ],
        )
        // Image.asset(
        //   'assets/lib/images/water_brain.png',
        //   height: 30,
        //   width: size.width,
        //   fit: BoxFit.cover,
        );
  }
}
