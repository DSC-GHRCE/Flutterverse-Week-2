import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      height: 60,
      decoration: BoxDecoration(
        color: Color(0xffFAEAD3),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          Icon(Icons.search),
          Container(
            width: 300,
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Search",
              ),
            ),
          ),
          Icon(Icons.format_align_right),
        ],
      ),
    );
  }
}