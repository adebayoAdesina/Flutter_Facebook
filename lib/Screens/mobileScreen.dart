import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../Data/data.dart';
import '../Model/postModel.dart';
import '../Util/colors.dart';
import '../Widgets/appBarIcon.dart';
import '../Widgets/createPost.dart';
import '../Widgets/postContainer.dart';
import '../Widgets/rooms.dart';
import '../Widgets/stories.dart';

class MobileScreen extends StatelessWidget {
  final TrackingScrollController trackingScrollController;
  const MobileScreen({Key? key, required this.trackingScrollController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: trackingScrollController,
      slivers: [
        SliverAppBar(
          floating: true,
          centerTitle: false,
          systemOverlayStyle: SystemUiOverlayStyle.light,
          backgroundColor: Palette.whiteColor,
          title: Row(
            children: const [
              Image(
                image: AssetImage('assets/facebook.png'),
                width: 50,
                height: 50,
              ),
              Text(
                'acebook',
                style: TextStyle(
                  color: Palette.facebookBlue,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -1.2,
                ),
              ),
            ],
          ),
          actions: [
            AppBarIcon(
              iconSize: 30.0,
              icon: Icons.search,
              onPressed: (() {}),
            ),
            AppBarIcon(
              iconSize: 30.0,
              icon: MdiIcons.facebookMessenger,
              onPressed: (() {}),
            )
          ],
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
        SliverPadding(
          padding: const EdgeInsets.fromLTRB(0, 5.0, 0, 5.0),
          sliver: SliverToBoxAdapter(
            child: Stories(currentUser: currentUser, stories: stories),
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
    );
  }
}
