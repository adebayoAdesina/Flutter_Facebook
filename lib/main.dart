import 'package:facebook_ui/Responsiveness/responsiveness.dart';
import 'package:facebook_ui/Screens/navScreen.dart';

import 'package:facebook_ui/Util/colors.dart';
import 'package:flutter/material.dart';

import 'myCustomScrollBehaviour.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: MyCustomScrollBehaviour(),
      title: 'Facebook UI',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Palette.scaffold),
      home: const NavScreen(),
    );
  }
}
