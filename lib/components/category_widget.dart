import 'package:flutter/material.dart';
import 'package:flutterverseone/constants.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemCount: category.length,
        itemBuilder: (context, index) {
          return Row(
            children: [
              Container(
                height: 45,
                width: 100,
                decoration: BoxDecoration(
                  color: Color(0xffFAEAD3),
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    width: index == 0 ? 1 : 0,
                    color:
                        index == 0 ? Colors.black : Colors.transparent,
                  ),
                ),
                child: Center(
                  child: Text(
                    category[index],
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
            ],
          );
        },
      ),
    );
  }
}