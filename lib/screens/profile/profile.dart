// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:nft_app_ui/models/profile.dart';
import 'package:nft_app_ui/widgets/grid_card.dart';
import 'package:nft_app_ui/widgets/person_info.dart';
import 'package:nft_app_ui/widgets/tab_sliver_delegate.dart';

class ProfilePage extends StatelessWidget {
  final profile = Profile.generateProfile();
  final tabs = ['Creations', 'Collections'];
  ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: _buildIcon(Icons.arrow_back_ios),
        actions: [_buildIcon(Icons.more_vert_outlined)],
      ),
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool isInnerBoxScrolled) {
            return [
              SliverToBoxAdapter(
                child: PersonInfo(profile: profile),
              ),
              SliverPersistentHeader(
                delegate: TabSliverDelegate(
                  TabBar(
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey[400],
                    indicatorColor: Colors.black,
                    tabs: tabs
                        .map((tab) => Tab(
                              child: Text(
                                tab,
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ))
                        .toList(),
                  ),
                ),
                pinned: true,
              ),
            ];
          },
          body: TabBarView(
            children: [
              GridCard(scrollKey: 'creations', list: profile.creations!),
              GridCard(scrollKey: 'collections', list: profile.collections!),
            ],
          ),
        ),
      ),
    );
  }

  IconButton _buildIcon(IconData icon) {
    return IconButton(
      onPressed: () {},
      icon: Icon(
        icon,
        color: Colors.black,
        size: 20,
      ),
    );
  }
}
