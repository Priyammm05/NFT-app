// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:nft_app_ui/models/profile.dart';

class PersonInfo extends StatelessWidget {
  final Profile profile;
  PersonInfo({Key? key, required this.profile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.transparent,
            backgroundImage: AssetImage(profile.imgUrl!),
          ),
          SizedBox(height: 30),
          Text(
            profile.name!,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          SizedBox(height: 5),
          Text(
            profile.username!,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.blue,
            ),
          ),
          SizedBox(height: 15),
          Text(
            profile.desc!,
            textAlign: TextAlign.center,
            style: TextStyle(
              height: 1.5,
              fontSize: 16,
              color: Colors.black54,
            ),
          ),
          SizedBox(height: 15),
          Text(
            profile.email!,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
