import 'package:flutter/material.dart';
import 'package:talisman/Grid.dart';
import 'package:talisman/Menu.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 60, 60, 60),
      body: Stack(
        children: [
          const Grid(), // The grid takes up the full screen
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