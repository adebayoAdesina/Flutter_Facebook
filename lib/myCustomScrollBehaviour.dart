import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class MyCustomScrollBehaviour extends MaterialScrollBehavior {
  //Override behaviour methods and getters like dragDEvices

  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse
  };
}