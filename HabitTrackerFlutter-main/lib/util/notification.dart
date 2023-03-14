// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 8.0),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Color.fromARGB(221, 199, 138, 236),
          borderRadius: BorderRadius.circular(37),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 1.0,
            vertical: 4,
          ),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Image.asset(
                      'lib/icons/notification.png',
                      height: 50,
                    )
                  ],
                ),
                Text('Reminder',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                Text('Remember your daily check in',
                    style: TextStyle(fontSize: 15, color: Colors.white)),
              ]),
        ),
      ),
    );
  }
}
