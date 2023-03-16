import 'package:flutter/material.dart';

void main() => runApp(const Guides());

class Guides extends StatelessWidget {
  const Guides({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: "ListView.builder",
//         theme: ThemeData(primarySwatch: Colors.green),
//         debugShowCheckedModeBanner: false,
//         home: const ListViewBuilder());
//   }
// }

// class ListViewBuilder extends StatelessWidget {
//   const ListViewBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 235, 216, 239),
      appBar: AppBar(
        title: const Text("Guides"),
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
            // leading: Icon(Icons.phone),
            title: Text('Anxiety'),
            // subtitle: Text('+254 718 227 440'),
            // trailing: Icon(Icons.more_vert),
          ),
        ),
        Card(
          child: ListTile(
            // leading: Icon(Icons.),
            title: Text('Insomnia'),

            // subtitle: Text('+254 722 178 177'),
            // trailing: Icon(Icons.more_vert),
            // isThreeLine: true,
          ),
        ),
        Card(
          child: ListTile(
            // tileColor:  Color.fromARGB(221, 199, 138, 236),
            // leading: Icon(Icons.phone),
            title: Text('Panic attacks'),
            // subtitle: Text('+254 718 227 440'),
            // trailing: Icon(Icons.more_vert),
          ),
        ),
      ],
    );
  }
}
