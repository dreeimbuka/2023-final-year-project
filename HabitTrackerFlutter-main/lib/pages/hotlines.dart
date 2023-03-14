import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() => runApp(const Hotlines());

class Hotlines extends StatelessWidget {
  const Hotlines({Key? key}) : super(key: key);
// This widget is the root
// of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "ListView.builder",
        theme: ThemeData(primarySwatch: Colors.green),
        debugShowCheckedModeBanner: false,
        // home : new ListViewBuilder(),  NO Need To Use Unnecessary New Keyword
        home: const ListViewBuilder());
  }
}

class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 235, 216, 239),
      appBar: AppBar(
        title: const Text("24hr-hotlines"),
        backgroundColor: const Color.fromARGB(255, 198, 138, 236),
      ),
      body: const LisTileExample(),
    );
  }
}

class LisTileExample extends StatelessWidget {
  const LisTileExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const <Widget>[
        Card(
          child: ListTile(
            leading: Icon(Icons.phone),
            title: Text('Niskize'),
            subtitle: Text('+254 718 227 440'),
            // trailing: Icon(Icons.more_vert),
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(Icons.phone),
            title: Text('Befrienders Kenya'),

            subtitle: Text('+254 722 178 177'),
            // trailing: Icon(Icons.more_vert),
            // isThreeLine: true,
          ),
        ),
        Card(
          child: ListTile(
            // tileColor:  Color.fromARGB(221, 199, 138, 236),
            leading: Icon(Icons.phone),
            title: Text('Mental Wellness Kenya'),
            subtitle: Text('+254 718 227 440'),
            // trailing: Icon(Icons.more_vert),
          ),
        ),
      ],
    );
  }
}
