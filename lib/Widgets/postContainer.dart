import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_ui/Model/postModel.dart';
import 'package:facebook_ui/Util/colors.dart';
import 'package:facebook_ui/Widgets/postHeader.dart';
import 'package:facebook_ui/Widgets/postStats.dart';
import 'package:flutter/material.dart';

import '../Responsiveness/responsiveness.dart';

class PostContainer extends StatelessWidget {
  final Post post;
  const PostContainer({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: Responsiveness.isDesktop(context)
          ? RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))
          : null,
      margin: EdgeInsets.symmetric(
          vertical: 5.0,
          horizontal: Responsiveness.isDesktop(context) ? 5.0 : 0.0),
      elevation: Responsiveness.isDesktop(context) ? 1.0 : 0.0,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        color: Palette.whiteColor,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  PostHeader(post: post),
                  const SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    post.caption.toString(),
                  ),
                  post.imageUrl == null
                      ? const SizedBox(
                          height: 6.0,
                        )
                      : const SizedBox(
                          height: 6.0,
                        ),
                ],
              ),
            ),
            post.imageUrl != null
                ? Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: CachedNetworkImage(
                      errorWidget: ((context, url, error) => Center(
                            child: CircularProgressIndicator(
                              color: Palette.facebookBlue.withOpacity(0.3),
                            ),
                          )),
                      imageUrl: post.imageUrl.toString(),
                    ),
                  )
                : const SizedBox.shrink(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: PostStats(post: post),
            )
          ],
        ),
      ),
    );
  }
}
