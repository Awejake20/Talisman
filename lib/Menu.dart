import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  final VoidCallback onPressed;

  const MenuButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 100.0, // Width of the button
        height: 100.0, // Height of the button
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 60, 60, 60), // Button color
          shape: BoxShape.circle, // Makes the button circular
        ),
        child: const Center(
          child: Icon(
            Icons.menu,
            size: 80.0, // Size of the icon
            color: Colors.white, // Icon color
          ),
        ),
      ),
    );
  }
}