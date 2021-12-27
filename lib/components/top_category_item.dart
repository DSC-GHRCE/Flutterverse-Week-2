// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class TopCategoryItems extends StatelessWidget {
  Color? conatinerColor;
  Color? iconColor;
  IconData? iconName;
  TopCategoryItems({Key? key, this.conatinerColor, this.iconColor, this.iconName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      margin: const EdgeInsets.fromLTRB(0, 10, 20, 10),
      decoration: BoxDecoration(
        color: conatinerColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Icon(
        iconName,
        color: iconColor,
      ),
    );
  }
}
