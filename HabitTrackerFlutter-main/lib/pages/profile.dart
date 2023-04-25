import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mhapp/pages/login.dart';
import 'package:mhapp/screens/signin_screen.dart';
import 'package:mhapp/screens/signup_screen.dart';

class Profile extends StatelessWidget {
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: Colors.deepPurple[400],
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Logout'),
          onPressed: () {
            auth.signOut();
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => SignInScreen()));
          },
        ),
      ),
    );
  }
}
