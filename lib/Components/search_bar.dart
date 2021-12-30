import 'package:flutter/material.dart';

class SearchBarContainer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: const Color(0xffF2F2F2),
      ),
      height: 45,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Container(
            width: 200,
            child: const TextField(
              decoration: InputDecoration(
                hintText: "What are you looking for?",
                border: InputBorder.none,
              ),
            ),
          ),
          const Spacer(),
          const Icon(
            Icons.search,
            color: Colors.deepPurple,
          )
        ],
      ),
    );
  }
}