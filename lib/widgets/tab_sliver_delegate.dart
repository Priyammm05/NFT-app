// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TabSliverDelegate extends SliverPersistentHeaderDelegate {
  final TabBar tabBar;
  final bool space;
  TabSliverDelegate(this.tabBar, {this.space = false});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            color: Colors.grey[200]!,
          ),
        ),
      ),
      padding: EdgeInsets.only(
        left: 20,
        right: space ? 120 : 20,
      ),
      child: tabBar,
    );
  }

  @override
  double get maxExtent => tabBar.preferredSize.height;

  @override
  double get minExtent => tabBar.preferredSize.height;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
