// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:nft_app_ui/constants/colors.dart';
import 'package:nft_app_ui/models/art.dart';
import 'package:nft_app_ui/widgets/art_info.dart';
import 'package:nft_app_ui/widgets/bidder_list.dart';
import 'package:nft_app_ui/widgets/buy_button.dart';
import 'package:nft_app_ui/widgets/detail_banner.dart';
import 'package:nft_app_ui/widgets/tab_sliver_delegate.dart';

class Detail extends StatelessWidget {
  final Art art;
  Detail({Key? key, required this.art}) : super(key: key);

  final tabs = ['Info', 'Bids', 'History'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: DefaultTabController(
        initialIndex: 1,
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxScroll) {
            return [
              SliverAppBar(
                elevation: 0,
                expandedHeight: 360,
                backgroundColor: buttonColor,
                leading: Container(
                  padding: EdgeInsets.only(left: 10),
                  child: _buildIcon(Icons.arrow_back_ios, () {
                    Navigator.pop(context);
                  }),
                ),
                actions: [_buildIcon(Icons.more_vert_outlined, () {})],
                flexibleSpace: FlexibleSpaceBar(
                  background: DetailBanner(art: art),
                ),
                pinned: true,
              ),
              SliverToBoxAdapter(
                child: ArtInfo(art: art),
              ),
              SliverPersistentHeader(
                delegate: TabSliverDelegate(
                  TabBar(
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey[400],
                    indicatorColor: Colors.black,
                    isScrollable: true,
                    labelPadding: EdgeInsets.only(left: 15, right: 25),
                    tabs: tabs
                        .map((tab) => Tab(
                              child: Text(
                                tab,
                                style: TextStyle(
                                  fontSize: 16,
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
              ListView(children: []),
              BidderList(scrollKey: 'Bids', bidderList: art.bids!),
              BidderList(scrollKey: 'History', bidderList: art.history!),
            ],
          ),
        ),
      ),
      floatingActionButton: BuyButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  IconButton _buildIcon(IconData icon, Function onPressed) {
    return IconButton(
      onPressed: onPressed as VoidCallback,
      splashRadius: 25,
      icon: Icon(
        icon,
        color: Colors.black54,
        size: 20,
      ),
    );
  }
}
