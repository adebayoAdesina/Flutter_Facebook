import 'package:facebook_ui/Screens/homePage.dart';
import 'package:facebook_ui/Util/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facebook UI',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Palette.scaffold),
      home: const HomePage(),
    );
  }
}
