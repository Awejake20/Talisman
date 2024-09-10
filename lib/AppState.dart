import 'package:flutter/material.dart';

class AppState extends ChangeNotifier {
  var current = 'Running';
  bool menuOpen = false;
  int nPlayers = 0;
  var gridLayout = '';
}