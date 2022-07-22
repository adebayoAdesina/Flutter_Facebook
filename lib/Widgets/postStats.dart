import 'package:facebook_ui/Util/colors.dart';
import 'package:facebook_ui/Widgets/postBotton.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../Model/postModel.dart';

class PostStats extends StatelessWidget {
  final Post post;
  const PostStats({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                const SizedBox(width: 4.0),
                Text(
                  post.likes.toString(),
                  style: TextStyle(
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
            Text(
              '${post.comments.toString()} Comments',
              style: TextStyle(
                color: Colors.grey[600],
              ),
            ),
            Text(
              '${post.shares.toString()} Shares',
              style: TextStyle(
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
        const Divider(),
        Row(
          children: [
            PostBotton(
                icon: Icon(MdiIcons.thumbUpOutline,
                    color: Colors.grey[600], size: 20.0),
                label: 'Like',
                onTap: () {}),
            PostBotton(
                icon: Icon(MdiIcons.commentOutline,
                    color: Colors.grey[600], size: 20.0),
                label: 'Comment',
                onTap: () {}),
            PostBotton(
                icon: Icon(MdiIcons.shareOutline,
                    color: Colors.grey[600], size: 25.0),
                label: 'Share',
                onTap: () {})
          ],
        )
      ],
    );
  }
}
