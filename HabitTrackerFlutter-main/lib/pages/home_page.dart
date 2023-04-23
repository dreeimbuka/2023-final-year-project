// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:mhapp/pages/exercises.dart';
import 'package:mhapp/pages/guides.dart';
import 'package:mhapp/pages/habit.dart';
import 'package:mhapp/pages/hotlines.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:mhapp/util/notification.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mhapp/pages/login.dart';
import 'package:mhapp/screens/signup_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 235, 216, 239),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),

            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'mhapp',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 1),

            //notification card
            SizedBox(
              height: 200,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: [
                  Notifications(),
                  Notifications(),
                  Notifications(),
                ],
              ),
            ),
            SizedBox(height: 1),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: WormEffect(
                  activeDotColor: Color.fromARGB(186, 172, 19, 151),
                  dotWidth: 7,
                  dotHeight: 7),
            ),

            SizedBox(
              height: 20,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'For You',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            //guides

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Guides()));
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 90,
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 176, 152, 218),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Image.asset('lib/icons/mindlove.png'),
                        ),
                      ),
                      Text('guides'),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Hotlines()));
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 90,
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 176, 152, 218),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Image.asset('lib/icons/emergency-call.png'),
                        ),
                      ),
                      Text('24hr hotlines'),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Exercises()));
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 90,
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 176, 152, 218),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Image.asset('lib/icons/brain.png'),
                        ),
                      ),
                      Text('exercises'),
                    ],
                  ),
                )
              ],
            ),

            SizedBox(
              height: 50,
            ),

            Text('Inspirational Quotes',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 5.0),
                  child: Container(
                      // ignore: sort_child_properties_last
                      child: Text(
                        '“Trust yourself that you can do it and get it.” ―Baz Luhrmann.',
                        style: TextStyle(fontSize: 20),
                      ),
                      padding: EdgeInsets.all(50),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(221, 199, 138, 236),
                        borderRadius: BorderRadius.circular(37),
                      )),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 5.0),
                  child: Container(
                      child: Text(
                        '"There is a crack in everything, that’s how the light gets in." ― Leonard Cohen',
                        style: TextStyle(fontSize: 20),
                      ),
                      padding: EdgeInsets.all(50),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(221, 199, 138, 236),
                        borderRadius: BorderRadius.circular(37),
                      )),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// class HomeScreen extends StatelessWidget {
//   final auth = FirebaseAuth.instance;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: ElevatedButton(
//           child: Text('Logout'),
//           onPressed: () {
//             auth.signOut();
//             Navigator.of(context).pushReplacement(
//                 MaterialPageRoute(builder: (context) => LoginScreen()));
//           },
//         ),
//       ),
//     );
//   }
// }
