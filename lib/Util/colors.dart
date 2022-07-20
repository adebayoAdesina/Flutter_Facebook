import 'package:flutter/material.dart';

class Palette {
  static const Color scaffold = Color(0xFFF0F2F5);

  static const Color facebookBlue = Color(0xFF0A1B65);

  static const LinearGradient createRoomGradient = LinearGradient(
    colors: [Color(0xFF496AE1), Color(0xFFCE48B1)],
  );

  static const Color online = Color(0xFF4BCB1F);

  static const LinearGradient storyGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Colors.transparent, Colors.black26],
  );

  static const Color whiteColor = Color(0XFFFFFFFF);
  static const Color blackColor = Color(0XFF000000);
  static const Color redColor = Colors.red;
  static const Color greenColor = Colors.green;
  static const Color purpleAccentColor = Colors.purpleAccent;
}
