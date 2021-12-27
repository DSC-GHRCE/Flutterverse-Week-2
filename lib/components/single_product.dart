// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class SingleProduct extends StatelessWidget {
  String? percentOff;
  String? image;
  String? name;
  String? price;
  String? originalPrice;

  SingleProduct(
      {Key? key,
      this.percentOff,
      this.image,
      this.name,
      this.originalPrice,
      this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      width: 155,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.orange),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                "$percentOff OFF",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                ),
              ),
              const Spacer(),
              Icon(
                Icons.favorite,
                color: Colors.grey.shade500,
              )
            ],
          ),
          const Spacer(),
          Image(
            width: 100,
            image: AssetImage("$image"),
          ),
          const Spacer(),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(bottom: 5),
            child: Text(
              "$name",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.grey.shade600,
              ),
            ),
          ),
          Row(
            children: [
              Text(
                "$price",
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "$originalPrice",
                style: TextStyle(
                  color: Colors.grey.shade500,
                  decoration: TextDecoration.lineThrough,
                  fontSize: 10,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
