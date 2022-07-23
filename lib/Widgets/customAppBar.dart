import 'package:facebook_ui/Widgets/appBarIcon.dart';
import 'package:facebook_ui/Widgets/customTabBar.dart';
import 'package:facebook_ui/Widgets/userCard.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../Model/userModel.dart';
import '../Util/colors.dart';

class CustomAppBar extends StatelessWidget {
  final User currentUser;
  final int selectedIndex;
  final List<IconData> icon;
  final Function(int) onTap;
  const CustomAppBar(
      {Key? key,
      required this.currentUser,
      required this.selectedIndex,
      required this.icon,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      height: 65.0,
      decoration: const BoxDecoration(
        color: Colors.black12,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4.0,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              children: const [
                Image(
                  image: AssetImage('assets/facebook.png'),
                  width: 50,
                  height: 50,
                ),
                Text(
                  'acebook',
                  style: TextStyle(
                    color: Palette.facebookBlue,
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: -1.2,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 600.0,
            height: double.infinity,
            child: CustomTabBar(
                icon: icon,
                selectedIndex: selectedIndex,
                onTap: onTap,
                isBottomIndicator: true),
          ),
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              UserCard(
                user: currentUser,
              ),
              const SizedBox(
                width: 12.0,
              ),
              AppBarIcon(
                icon: Icons.search,
                iconSize: 30.0,
                onPressed: () {},
              ),
              AppBarIcon(
                iconSize: 30.0,
                icon: MdiIcons.facebookMessenger,
                onPressed: (() {}),
              )
            ],
          ))
        ],
      ),
    );
  }
}
