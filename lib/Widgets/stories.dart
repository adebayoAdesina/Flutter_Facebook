import 'package:facebook_ui/Util/colors.dart';
import 'package:facebook_ui/Widgets/storyCard.dart';
import 'package:flutter/material.dart';

import '../Model/storyModel.dart';
import '../Model/userModel.dart';

class Stories extends StatelessWidget {
  final User currentUser;
  final List<Story> stories;
  const Stories({Key? key, required this.currentUser, required this.stories})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      color: Palette.whiteColor,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 8.0,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: stories.length + 1,
        itemBuilder: ((context, index) {
          if (index == 0) {
            return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: StoryCard(
                  currentUser: currentUser,
                  isAddStory: true,
                ));
          } else {
            Story story = stories[index - 1];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: StoryCard(
                story: story,
              ),
            );
          }
        }),
      ),
    );
  }
}
