import 'package:flutter/material.dart';

import '../Data/data.dart';
import '../Model/postModel.dart';
import '../Widgets/contactsList.dart';
import '../Widgets/createPost.dart';
import '../Widgets/moreOptionsList.dart';
import '../Widgets/postContainer.dart';
import '../Widgets/rooms.dart';
import '../Widgets/stories.dart';

class DesktopScreen extends StatelessWidget {
  final TrackingScrollController trackingScrollController;
  const DesktopScreen({Key? key, required this.trackingScrollController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 2,
          child: Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: MoreOptionsList(currentUser: currentUser),
            ),
          ),
        ),
        const Spacer(),
        SizedBox(
          width: 600.0,
          child: CustomScrollView(
            controller: trackingScrollController,
            slivers: [
              SliverPadding(
                padding: const EdgeInsets.fromLTRB(0, 20.0, 0, 10.0),
                sliver: SliverToBoxAdapter(
                  child: Stories(currentUser: currentUser, stories: stories),
                ),
              ),
              SliverToBoxAdapter(
                child: CreatePost(currentUser: currentUser),
              ),
              SliverPadding(
                padding: const EdgeInsets.fromLTRB(0, 10.0, 0, 5.0),
                sliver: SliverToBoxAdapter(
                  child: Rooms(onlineUsers: onlineUsers),
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    Post post = posts[index];
                    return PostContainer(post: post);
                  },
                  childCount: posts.length,
                ),
              )
            ],
          ),
        ),
        const Spacer(),
        Flexible(
          flex: 2,
          child: Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: ContactsList(user: onlineUsers),
            ),
          ),
        ),
      ],
    );
  }
}
