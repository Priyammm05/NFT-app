// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nft_app_ui/constants/colors.dart';

class BuyButton extends StatelessWidget {
  const BuyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 56,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: RawMaterialButton(
        onPressed: () {},
        fillColor: buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 0,
        child: Text(
          'Buy it now',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
