import 'package:flutter/material.dart';
import 'package:mhapp/util/color_utils.dart';

class Guides extends StatelessWidget {
  const Guides({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          listTileTheme: const ListTileThemeData(
        textColor: Colors.white,
      )),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Suggested Guides'),
          backgroundColor: Colors.deepPurple[400],
        ),
        backgroundColor: const Color.fromARGB(255, 235, 216, 239),
        body: const LisTileExample(),
      ),
    );
  }
}

class LisTileExample extends StatefulWidget {
  const LisTileExample({super.key});

  @override
  State<LisTileExample> createState() => _LisTileExampleState();
}

class _LisTileExampleState extends State<LisTileExample>
    with TickerProviderStateMixin {
  late final AnimationController _fadeController;
  late final AnimationController _sizeController;
  late final Animation<double> _fadeAnimation;
  late final Animation<double> _sizeAnimation;

  @override
  void initState() {
    super.initState();
    _fadeController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..repeat(reverse: true);

    _sizeController = AnimationController(
      duration: const Duration(milliseconds: 850),
      vsync: this,
    )..repeat(reverse: true);

    _fadeAnimation = CurvedAnimation(
      parent: _fadeController,
      curve: Curves.easeInOut,
    );

    _sizeAnimation = CurvedAnimation(
      parent: _sizeController,
      curve: Curves.easeOut,
    );
  }

  @override
  void dispose() {
    _fadeController.dispose();
    _sizeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Hero(
            tag: 'ListTile-Hero',
            // Wrap the ListTile in a Material widget so the ListTile has someplace
            // to draw the animated colors during the hero transition.
            child: Material(
              child: ListTile(
                title: const Text('Insomnia'),
                subtitle: const Text(''),
                tileColor: Color.fromARGB(255, 215, 13, 222),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<Widget>(builder: (BuildContext context) {
                      return Scaffold(
                        appBar: AppBar(
                          title: const Text('Insomnia Guides'),
                          backgroundColor: Color.fromARGB(255, 215, 13, 222),
                        ),
                        body: Center(
                            // child: Hero(
                            //   tag: 'ListTile-Hero',
                            //   child: Material(
                            //     child: ListTile(
                            //       title: const Text('ListTile with Hero'),
                            //       subtitle: const Text('Tap here to go back'),
                            //       tileColor: Colors.blue[700],
                            //       onTap: () {
                            //         Navigator.pop(context);
                            //       },
                            ),
                      );
                    }),
                  );
                },
              ),
            ),
          ),
        ]);
  }
}
