import 'package:flutter/material.dart';
import 'package:talisman/Player.dart';
import 'dart:math';

class Grid extends StatelessWidget {
  final List<Color> palette;
  const Grid({super.key, required this.palette});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    const padding = 16.0;
    const spacing = 8.0;
    
    final itemHeight = (size.height - kToolbarHeight + padding) / 2;
    final itemWidth = (size.width - (padding * 2) - spacing) / 2;

    // Colors
    List<Color> mutablePalette = List.from(palette);

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
        
        final randomIndex = Random().nextInt(mutablePalette.length);
        final randomColor = mutablePalette[randomIndex];
        mutablePalette.removeAt(randomIndex);

        return Player(color: randomColor);
      },
    );
  }
}