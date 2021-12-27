import 'package:flutter/material.dart';

class MyNavigationBar extends StatelessWidget {
  const MyNavigationBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.orange.shade100,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.home_filled,
                  color: Colors.orange.shade800,
                ),
                const SizedBox(width: 5),
                Text(
                  'Home',
                  style: TextStyle(color: Colors.orange.shade800, fontSize: 16),
                ),
              ],
            ),
          ),
          Icon(
            Icons.favorite,
            color: Colors.grey.shade400,
          ),
          Icon(
            Icons.shopping_cart,
            color: Colors.grey.shade400,
          ),
          Icon(
            Icons.person,
            color: Colors.grey.shade400,
          )
        ],
      ),
    );
  }
}