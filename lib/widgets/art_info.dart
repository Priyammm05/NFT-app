// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:nft_app_ui/models/art.dart';
import 'package:nft_app_ui/models/profile.dart';

class ArtInfo extends StatelessWidget {
  final Art art;
  ArtInfo({Key? key, required this.art}) : super(key: key);

  final Profile profile = Profile.generateProfile();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            art.name!,
            style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 15),
          Row(
            children: [
              _buildIconText(
                imgUrl: profile.imgUrl!,
                padding: 0.0,
                title: 'Creator',
                text: profile.username!.substring(1),
              ),
              SizedBox(width: 100),
              _buildIconText(
                imgUrl: 'images/eth.png',
                padding: 8.0,
                title: 'Current Bid',
                text: '${art.price} ETH',
              ),
            ],
          ),
          SizedBox(height: 20),
          Text(
            art.desc!,
            style: TextStyle(
              wordSpacing: 3,
              height: 1.3,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }

  _buildIconText({
    required String imgUrl,
    required double padding,
    required String title,
    required String text,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 40,
          width: 40,
          padding: EdgeInsets.all(padding),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey[200],
          ),
          child: Image.asset(imgUrl),
        ),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.black45,
              ),
            ),
            Text(text,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  height: 1.5,
                )),
          ],
        ),
      ],
    );
  }
}
