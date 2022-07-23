import 'package:facebook_ui/Responsiveness/responsiveness.dart';
import 'package:facebook_ui/Views/homePage.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../Data/data.dart';
import '../Widgets/customAppBar.dart';
import '../Widgets/customTabBar.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({Key? key}) : super(key: key);

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  List<Widget> screens = const [
    HomePage(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
  ];

  List<IconData> icon = const [
    Icons.home,
    Icons.ondemand_video,
    MdiIcons.accountCircleOutline,
    MdiIcons.accountGroupOutline,
    MdiIcons.bellOutline,
    Icons.menu,
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: screens.length,
      child: Scaffold(
        appBar: Responsiveness.isDesktop(context)
            ? PreferredSize(
                child: CustomAppBar(
                  currentUser: currentUser,
                  icon: icon,
                  selectedIndex: selectedIndex,
                  onTap: (index) => setState(
                    () => selectedIndex = index,
                  ),
                ),
                preferredSize: Size(size.width, 100))
            : null,
        body: IndexedStack(
          index: selectedIndex,
          children: screens,
        ),
        bottomNavigationBar: !Responsiveness.isDesktop(context)
            ? Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: CustomTabBar(
                  icon: icon,
                  selectedIndex: selectedIndex,
                  onTap: (index) => setState(
                    () => selectedIndex = index,
                  ),
                ),
              )
            : const SizedBox.shrink(),
      ),
    );
  }
}
