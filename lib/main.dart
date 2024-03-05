import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:player/player_screen.dart';

void main() {
  runApp(Player());
}
class Player extends StatelessWidget {
  const Player({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true
      ),
      home: PlayerScreen(),
    );
  }
}
