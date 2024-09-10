import 'package:flutter/material.dart';

class Player extends StatefulWidget {
  final Color color;
  const Player({super.key, required this.color});

  @override
  _PlayerState createState() => _PlayerState();
}

class _PlayerState extends State<Player> {

  int _life = 40;

  void _increment() {
    setState(() {
      _life++;
    });
  }

  void _decrement() {
    setState(() {
      _life--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final boxWidth = constraints.maxWidth; // Width of the Player widget
        final fontSize = boxWidth / 3; // Font size is one-third of the widget width

        return GestureDetector(
          onTapUp: (details) {
            final tapPosition = details.localPosition.dx;

            if (tapPosition < boxWidth / 2) {
              _decrement();
            } else {
              _increment();
            }
            if (_life < 0) _life = 0;
          },
          child: Container(
            decoration: BoxDecoration(
              color: widget.color,
              borderRadius: BorderRadius.circular(16.0), // Rounded corners
            ),
            child: Center(
              child: Text(
                '$_life',
                style: TextStyle(
                  fontSize: fontSize, // Set the font size dynamically
                  color: Colors.white,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}