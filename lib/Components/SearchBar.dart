import 'package:flutter/material.dart';

class SearchBarContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: Color(0xffF2F2F2)),
      height: 50,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Container(
            width: 200,
            child: const TextField(
              decoration: InputDecoration(
                  hintText: "Search for something", border: InputBorder.none),
            ),
          ),
          Spacer(),
          Icon(Icons.search)
        ],
      ),
    );
  }
}
