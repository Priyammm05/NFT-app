// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nft_app_ui/models/art.dart';

class DetailBanner extends StatelessWidget {
  final Art art;
  const DetailBanner({Key? key, required this.art}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.white,
          padding: EdgeInsets.all(12),
          height: 400,
          width: double.maxFinite,
          child: Hero(
            tag: art.imgUrl!,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.asset(
                art.imgUrl!,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(
          right: 30,
          bottom: 30,
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.favorite_outline,
              color: Colors.pink,
            ),
          ),
        ),
      ],
    );
  }
}
