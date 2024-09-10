import 'package:flutter/material.dart';
import 'package:talisman/Grid.dart';
import 'package:talisman/Menu.dart';

class Home extends StatelessWidget {

  // Color palette
  static const palette = [
    Color.fromARGB(255, 255, 0, 0),
    Color.fromARGB(255, 255, 100, 0),
    Color.fromARGB(255, 255, 230, 0),
    Color.fromARGB(255, 30, 255, 0),
    Color.fromARGB(255, 0, 255, 130),
    Color.fromARGB(255, 0, 255, 200),
    Color.fromARGB(255, 0, 0, 255),
    Color.fromARGB(255, 120, 0, 255),
    Color.fromARGB(255, 200, 0, 255),
    Color.fromARGB(255, 255, 0, 200),
    Color.fromARGB(255, 255, 130, 200)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 60, 60, 60),
      body: Stack(
        children: [
          const Grid(palette: palette), // The grid takes up the full screen
          Center(
            child: MenuButton(
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}