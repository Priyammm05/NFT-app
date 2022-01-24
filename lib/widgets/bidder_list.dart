// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:nft_app_ui/models/bidder.dart';
import 'package:nft_app_ui/widgets/bidder_card.dart';

class BidderList extends StatelessWidget {
  final String scrollKey;
  final List<Bidder> bidderList;
  BidderList({ Key? key , required this.scrollKey, required this.bidderList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
        key: PageStorageKey(scrollKey),
        padding: EdgeInsets.all(15),
        itemCount: bidderList.length,
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(height: 15);
        },
        itemBuilder: (BuildContext context, int index) {
          return BidderCard(bidder:bidderList[index]);
        },
      ),
    );
  }
}