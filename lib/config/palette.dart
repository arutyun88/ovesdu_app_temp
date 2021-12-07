import 'package:flutter/material.dart';

class Palette {
  static const Color scaffold = Color(0xFFF0F2F5);

  static const Color facebookBlue = Color(0xff1777f2);

  static const LinearGradient createRoomGradient = LinearGradient(colors: [
    Color(0xff496ae1),
    Color(0xFF4BCB1F),
  ]);

  static const Color online = Color(0xFF4BCB1F);

  static const LinearGradient storyGradient = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color(0xff496ae1),
        Color(0xffce48b1),
      ]);
}
