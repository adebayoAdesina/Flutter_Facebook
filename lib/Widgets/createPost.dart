import 'package:facebook_ui/Model/userModel.dart';
import 'package:facebook_ui/Responsiveness/responsiveness.dart';
import 'package:facebook_ui/Util/colors.dart';
import 'package:facebook_ui/Widgets/createPostTextButton.dart';
import 'package:facebook_ui/Widgets/profileAvatar.dart';
import 'package:flutter/material.dart';

class CreatePost extends StatelessWidget {
  final User currentUser;
  const CreatePost({Key? key, required this.currentUser}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: Responsiveness.isDesktop(context)
          ? RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))
          : null,
      margin: EdgeInsets.symmetric(
          horizontal: Responsiveness.isDesktop(context) ? 5.0 : 0.0),
      elevation: Responsiveness.isDesktop(context) ? 1.0 : 0.0,
      child: Container(
        padding: const EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0),
        margin: const EdgeInsets.only(top: 5),
        color: Palette.whiteColor,
        child: Column(
          children: [
            Row(
              children: [
                ProfileAvatar(
                  imageUrl: currentUser.imageUrl.toString(),
                ),
                const SizedBox(
                  width: 8.0,
                ),
                const Expanded(
                    child: TextField(
                  decoration: InputDecoration.collapsed(
                      hintText: 'wwat\'s on your mind?'),
                )),
              ],
            ),
            const Divider(
              height: 10.0,
              thickness: 0.5,
            ),
            SizedBox(
              height: 40.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CreatePostTextButton(
                      color: Palette.redColor,
                      onPressed: () {},
                      icon: Icons.videocam,
                      text: 'Live'),
                  verticalDivider,
                  CreatePostTextButton(
                      color: Palette.greenColor,
                      onPressed: () {},
                      icon: Icons.photo_library,
                      text: 'Photo'),
                  verticalDivider,
                  CreatePostTextButton(
                      color: Palette.purpleAccentColor,
                      onPressed: () {},
                      icon: Icons.video_call,
                      text: 'Room'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget get verticalDivider => const VerticalDivider(
        width: 8.0,
      );
}
