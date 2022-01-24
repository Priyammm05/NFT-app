// ignore_for_file: prefer_const_constructors, unnecessary_string_interpolations

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:nft_app_ui/constants/colors.dart';
import 'package:nft_app_ui/models/bidder.dart';

class BidderCard extends StatelessWidget {
  final Bidder bidder;
  const BidderCard({Key? key, required this.bidder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Random random = Random();

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: randomPinkList[random.nextInt(9) + 1],
              ),
              // child: Image.asset(imgUrl),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Bid placed by ${bidder.name}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  '${DateFormat.yMMMd().format(bidder.date!)} at ${bidder.date!.hour}:${bidder.date!.minute}',
                  style: TextStyle(
                    color: Colors.grey[400],
                  ),
                ),
              ],
            ),
          ],
        ),
        Text(
          '${bidder.price} ETH',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
