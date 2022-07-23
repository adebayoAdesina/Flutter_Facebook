import 'package:facebook_ui/Util/colors.dart';
import 'package:facebook_ui/Widgets/userCard.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../Model/userModel.dart';

class MoreOptionsList extends StatelessWidget {
  List<List> moreOptionsList = [
    [MdiIcons.shieldAccount, Colors.deepPurple, 'COVID-19 Info Center'],
    [MdiIcons.accountMultiple, Colors.cyan, 'Friends'],
    [MdiIcons.facebookMessenger, Palette.facebookBlue, 'Messenger'],
    [MdiIcons.flag, Colors.orange, 'Pages'],
    [MdiIcons.storefront, Palette.facebookBlue, 'Marketplace'],
    [Icons.ondemand_video, Palette.facebookBlue, 'Watch'],
    [MdiIcons.calendarStar, Colors.red, 'Events'],
  ];
  final User currentUser;
  MoreOptionsList({Key? key, required this.currentUser}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 280.0),
      child: ListView.builder(
          itemCount: moreOptionsList.length + 1,
          itemBuilder: (context, index) {
            if (index == 0) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: UserCard(user: currentUser),
              );
            }
            final List option = moreOptionsList[index];
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child:
                  Option(icon: option[0], color: option[1], label: option[2]),
            );
          }),
    );
  }
}
