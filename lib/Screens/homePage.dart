import 'package:facebook_ui/Data/data.dart';
import 'package:facebook_ui/Util/colors.dart';
import 'package:facebook_ui/Widgets/createPost.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../Widgets/appBarIcon.dart';
import '../Widgets/rooms.dart';
import '../Widgets/stories.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
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
          )
        ],
      ),
    );
  }
}
