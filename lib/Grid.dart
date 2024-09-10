import 'package:flutter/material.dart';
import 'package:talisman/Player.dart';

class Grid extends StatelessWidget {
  const Grid({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    const padding = 16.0;
    const spacing = 8.0;
    
    final itemHeight = (size.height - kToolbarHeight + padding) / 2;
    final itemWidth = (size.width - (padding * 2) - spacing) / 2;

    return GridView.builder(
      padding: EdgeInsets.all(padding),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // 2 columns
        mainAxisSpacing: spacing, // Spacing between rows
        crossAxisSpacing: spacing, // Spacing between columns
        childAspectRatio: itemWidth / itemHeight, // Adjust the aspect ratio
      ),
      itemCount: 4, // Number of Player widgets
      itemBuilder: (context, index) {
        return const Player();
      },
    );
  }
}