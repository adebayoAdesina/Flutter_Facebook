import 'package:facebook_ui/Util/colors.dart';
import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  final List<IconData> icon;
  final int selectedIndex;
  final Function(int) onTap;
  final bool isBottomIndicator;
  const CustomTabBar(
      {Key? key,
      required this.icon,
      required this.selectedIndex,
      required this.onTap,
      this.isBottomIndicator = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorPadding: EdgeInsets.zero,
      indicator: BoxDecoration(
        border: isBottomIndicator
            ? const Border(
                bottom: BorderSide(color: Palette.facebookBlue, width: 3.0),
              )
            : const Border(
                top: BorderSide(color: Palette.facebookBlue, width: 3.0),
              ),
      ),
      tabs: icon
          .asMap()
          .map((i, e) => MapEntry(
                i,
                Tab(
                  icon: Icon(
                    e,
                    color: i == selectedIndex
                        ? Palette.facebookBlue
                        : Colors.grey[600],
                    size: 30.0,
                  ),
                ),
              ))
          .values
          .toList(),
      onTap: onTap,
    );
  }
}
