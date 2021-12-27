import 'package:flutter/material.dart';
import 'package:flutterverseone/components/top_category_item.dart';

class TopCategory extends StatelessWidget {
  const TopCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        children: [
          const Text(
            "Top Categories",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          const Spacer(),
          Text(
            "SEE ALL",
            style: TextStyle(
              fontSize: 12,
              color: Colors.orange.shade800,
            ),
          ),
        ],
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            TopCategoryItems(
                conatinerColor: Colors.orange.shade800,
                iconColor: Colors.white,
                iconName: Icons.headphones_rounded),
            TopCategoryItems(
                conatinerColor: Colors.grey.shade300,
                iconColor: Colors.grey.shade700,
                iconName: Icons.camera_alt),
            TopCategoryItems(
                conatinerColor: Colors.grey.shade300,
                iconColor: Colors.grey.shade700,
                iconName: Icons.tablet_android),
            TopCategoryItems(
                conatinerColor: Colors.grey.shade300,
                iconColor: Colors.grey.shade700,
                iconName: Icons.watch_outlined),
            TopCategoryItems(
                conatinerColor: Colors.grey.shade300,
                iconColor: Colors.grey.shade700,
                iconName: Icons.book),
            TopCategoryItems(
                conatinerColor: Colors.grey.shade300,
                iconColor: Colors.grey.shade700,
                iconName: Icons.blender),
            TopCategoryItems(
                conatinerColor: Colors.grey.shade300,
                iconColor: Colors.grey.shade700,
                iconName: Icons.bed),
            TopCategoryItems(
                conatinerColor: Colors.grey.shade300,
                iconColor: Colors.grey.shade700,
                iconName: Icons.bike_scooter),
            TopCategoryItems(
                conatinerColor: Colors.grey.shade300,
                iconColor: Colors.grey.shade700,
                iconName: Icons.business_center),
          ],
        ),
      ),
    ]);
  }
}
