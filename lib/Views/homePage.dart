
import 'package:facebook_ui/Responsiveness/responsiveness.dart';
import 'package:facebook_ui/Screens/desktop.dart';
import 'package:facebook_ui/Screens/mobileScreen.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TrackingScrollController trackingScrollController = TrackingScrollController();
  @override
  void dispose() {
    trackingScrollController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Responsiveness(
          desktop: DesktopScreen(trackingScrollController: trackingScrollController),
          tablet: MobileScreen(trackingScrollController: trackingScrollController),
          mobile: MobileScreen(trackingScrollController: trackingScrollController),
        ),
      ),
    );
  }
}
