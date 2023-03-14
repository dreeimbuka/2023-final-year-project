// // ignore_for_file: prefer_const_constructors

// import 'package:flutter/material.dart';

// class MyButton extends StatelessWidget {
//   final String iconImagePath;
//   final String buttonText;

//   const MyButton({
//     Key? key,
//     required this.iconImagePath,
//     required this.buttonText,
//     required Null Function() onPressed,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           height: 99,
//           padding: EdgeInsets.all(8.0),
//           decoration: BoxDecoration(
//             // ignore: prefer_const_literals_to_create_immutables
//             boxShadow: [
//               BoxShadow(
//                 color: Color.fromARGB(255, 237, 212, 241),
//                 blurRadius: 20,
//                 spreadRadius: 2,
//               ),
//             ],
//             color: Color.fromARGB(255, 176, 152, 218),
//             borderRadius: BorderRadius.circular(15),
//           ),
//           child: Center(
//             child: Image.asset(iconImagePath),
//           ),
//         ),
//         SizedBox(
//           height: 10,
//         ),
//         Text(
//           buttonText,
//           style: TextStyle(
//             fontSize: 18,
//             fontWeight: FontWeight.bold,
//             color: Colors.black54,
//           ),
//         )
//       ],
//     );
//   }
// }
