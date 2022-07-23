import 'package:flutter/material.dart';

class Responsiveness extends StatelessWidget {
  final Widget desktop;
  final Widget tablet;
  final Widget mobile;
  const Responsiveness(
      {Key? key,
      required this.desktop,
      required this.tablet,
      required this.mobile})
      : super(key: key);

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= 800;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 800 &&
      MediaQuery.of(context).size.width < 1200;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1200;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ((context, constraints) {
        if (constraints.maxWidth >= 1200) {
          return desktop;
        } else if (constraints.maxWidth >= 800) {
          return tablet;
        } else {
          return mobile;
        }
      }),
    );
  }
}
