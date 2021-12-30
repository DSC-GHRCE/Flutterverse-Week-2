import 'package:flutter/material.dart';
import 'package:flutterverseone/HomeScreen.dart';


class bottomNavBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width * 1,
      //color: Colors.grey,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.8),
          spreadRadius: 5,
          blurRadius: 10,
          offset: Offset(7.0, 8.0),
        )
      ]),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ),
              );
            },
            child: const Icon(
              Icons.home,
                size: 38,
                color: Colors.deepPurple,
            ),
          ),
          Icon(
            Icons.explore_rounded,
            size: 35,
            color: Colors.deepPurple,
          ),
          Icon(
            Icons.shopping_cart,
            size: 35,
            color: Colors.deepPurple,
          ),
          Icon(
            Icons.account_circle,
            size: 35,
            color: Colors.deepPurple,
          ),
        ],
      ),
    )
      ;
  }
}