import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_ui/Model/userModel.dart';
import 'package:facebook_ui/Util/colors.dart';
import 'package:facebook_ui/Widgets/profileAvatar.dart';
import 'package:flutter/material.dart';

import '../Model/storyModel.dart';

class StoryCard extends StatelessWidget {
  final User? currentUser;
  final bool isAddStory;
  final Story? story;

  const StoryCard({
    Key? key,
    this.currentUser,
    this.isAddStory = false,
    this.story,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child: CachedNetworkImage(
            errorWidget: ((context, url, error) => Center(
                  child: CircularProgressIndicator(
                    color: Palette.facebookBlue.withOpacity(0.4),
                  ),
                )),
            imageUrl: isAddStory
                ? currentUser!.imageUrl.toString()
                : story!.imageUrl.toString(),
            height: double.infinity,
            width: 110.0,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          height: double.infinity,
          width: 120,
          decoration: BoxDecoration(
            gradient: Palette.storyGradient,
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
        Positioned(
          top: 8.0,
          left: 8.0,
          child: isAddStory
              ? Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: const BoxDecoration(
                    color: Palette.whiteColor,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.add,
                        size: 30.0,
                        color: Palette.facebookBlue,
                      )),
                )
              : ProfileAvatar(
                  imageUrl: story!.imageUrl.toString(),
                  hasBorder: true,
                ),
        ),
        Positioned(
          bottom: 8.0,
          left: 8.0,
          child: Text(
            isAddStory ? 'Add to story' : story!.user!.name.toString(),
            style: const TextStyle(
              color: Palette.whiteColor,
              fontWeight: FontWeight.bold,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
