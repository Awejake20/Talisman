import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:talisman/AppState.dart';
import 'package:talisman/Home.dart';

void main() {
  runApp(const Talisman());
}

class Talisman extends StatelessWidget {
  const Talisman({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppState(),
      child: MaterialApp(
        title: 'Talisman',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        ),
        home: Home(),
      ),
    );
  }
}