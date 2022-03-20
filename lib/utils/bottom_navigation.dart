import 'package:flutter/material.dart';
import 'package:travely_app/shared/themes.dart';

class BottomNavigation extends StatelessWidget {

  final String imageUrl;
  final bool isSelected;

  const BottomNavigation({

    Key? key,
    required this.imageUrl,
    this.isSelected = false,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(),
        Image.asset(
          imageUrl,
          width: 24,
          height: 24,
        ),
      ],
    );
  }
}