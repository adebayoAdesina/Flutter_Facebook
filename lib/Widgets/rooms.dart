import 'package:facebook_ui/Model/userModel.dart';
import 'package:facebook_ui/Util/colors.dart';
import 'package:facebook_ui/Widgets/profileAvatar.dart';
import 'package:flutter/material.dart';

import 'createRoomButton.dart';

class Rooms extends StatelessWidget {
  final List<User> onlineUsers;
  const Rooms({Key? key, required this.onlineUsers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Palette.whiteColor,
      height: 60.0,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 4.0,
        ),
        scrollDirection: Axis.horizontal,
        physics: const ScrollPhysics(),
        itemCount: onlineUsers.length + 1,
        itemBuilder: (context, index) {
          if (index == 0) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: CreateRoomButton(),
            );
          } else {
            User user = onlineUsers[index - 1];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ProfileAvatar(imageUrl: user.imageUrl.toString(), isActive: true,),
            );
          }
        },
      ),
    );
  }
}
