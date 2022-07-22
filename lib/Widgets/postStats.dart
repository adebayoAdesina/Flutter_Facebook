import 'package:facebook_ui/Util/colors.dart';
import 'package:flutter/material.dart';

import '../Model/postModel.dart';

class PostStats extends StatelessWidget {
  final Post post;
  const PostStats({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(4.0),
              decoration: const BoxDecoration(
                  color: Palette.facebookBlue, shape: BoxShape.circle),
              child: const Icon(
                Icons.thumb_up,
                size: 10.0,
                color: Palette.whiteColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
