// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:nft_app_ui/models/art.dart';
import 'package:nft_app_ui/screens/details/detail.dart';

class GridCard extends StatelessWidget {
  final String scrollKey;
  List<Art> list;
  GridCard({
    Key? key,
    required this.scrollKey,
    required this.list,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: GridView.builder(
        key: PageStorageKey(scrollKey),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 4 / 5,
        ),
        itemCount: list.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Detail(art: list[index]),
              ),
            ),
            child: Container(
              height: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Hero(
                tag: list[index].imgUrl!,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    list[index].imgUrl!,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
