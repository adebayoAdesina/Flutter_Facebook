import 'package:facebook_ui/Screens/mobileScreen.dart';
import 'package:facebook_ui/Screens/webScreen.dart';
import 'package:flutter/material.dart';

class Responsiveness extends StatelessWidget {
  const Responsiveness({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: ((context, constraints) {
      if (constraints.maxWidth > 900) {
        return const WebScreen();
      } else {
        return const MobileScreen();
      }
    }));
  }
}
