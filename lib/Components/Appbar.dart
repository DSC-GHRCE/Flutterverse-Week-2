import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      width: MediaQuery.of(context).size.width * 1,
      child: Row(
        children: [
          const Text(
            " Food Grid",
            style: TextStyle(
              color: Colors.deepPurple,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          // Image.asset(
          //   "assets/amazon.png",
          //   width: 100,
          // ),
          const Spacer(),
          Container(
              height: 30,
              width: 25,
              margin: const EdgeInsets.all(10),
              // padding: EdgeInsets.all(10),
              decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(25)),
              child: const Icon(
                Icons.notifications,
                color: Colors.deepPurple,
                size: 30,
              )),
          Container(
              height: 25,
              width: 30,
              margin: const EdgeInsets.all(10),
              // padding: EdgeInsets.all(10),
              decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(25)),
              child: const Icon(
                Icons.favorite,
                color: Colors.deepPurple,
                size: 30,
              )),
        ],
      ),
    )
      ;
  }
}