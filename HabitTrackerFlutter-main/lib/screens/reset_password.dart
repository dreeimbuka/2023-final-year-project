import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mhapp/reusable_widgets/reusable_widget.dart';
import 'package:mhapp/pages/profile.dart';
import 'package:mhapp/util/color_utils.dart';
import 'package:flutter/material.dart';
import 'package:mhapp/screens/signup_screen.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Reset Password",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            hexStringToColor("CB2B93"),
            hexStringToColor("9546C4"),
            hexStringToColor("5E61F4")
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: SingleChildScrollView(
              child: Padding(
            padding: EdgeInsets.fromLTRB(20, 120, 20, 0),
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Enter Email", Icons.person_outline, false,
                    _emailTextController),
                const SizedBox(
                  height: 20,
                ),
                firebaseUIButton(context, "Reset Password", () async {
                  try {
                    await FirebaseAuth.instance.sendPasswordResetEmail(
                      email: _emailTextController.text,
                    );

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignUpScreen()));
                  } on FirebaseAuthException catch (error) {
                    Fluttertoast.showToast(
                        msg: error.toString(), gravity: ToastGravity.TOP);
                  }
                })
              ],
            ),
          ))),
    );
  }
}
