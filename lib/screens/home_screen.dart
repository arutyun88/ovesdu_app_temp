import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:ovesdu/config/palette.dart';
import 'package:ovesdu/data/data.dart';
import 'package:ovesdu/models/models.dart';
import 'package:ovesdu/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              // brightness: Brightness.dark,
              // systemOverlayStyle:
              //     SystemUiOverlayStyle(statusBarColor: Colors.blue),
              systemOverlayStyle: SystemUiOverlayStyle.light,
              backgroundColor: Colors.white,
              title: Text(
                'OvesDu',
                style: const TextStyle(
                    color: Palette.facebookBlue,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    letterSpacing: -5.8),
              ),
              centerTitle: false,
              floating: true,
              actions: [
                // CircleButton(
                //   icon: Icons.search,
                //   iconSize: 30,
                //   onPressed: () => print('Search'),
                // ),
                CircleButton(
                  icon: MdiIcons.messageOutline,
                  iconSize: 30,
                  onPressed: () => print('Messenger'),
                )
              ],
            ),
            SliverToBoxAdapter(
              child: CreatePostContainer(currentUser: currentUser),
            ),
            SliverPadding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 5),
              sliver: SliverToBoxAdapter(
                child: Rooms(onlineUsers: onlineUsers),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
              sliver: SliverToBoxAdapter(
                child: Stories(currentUser: currentUser, stories: stories),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final Post post = posts[index];
                  return PostContainer(post: post);
                },
                childCount: posts.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
