import 'package:flutter/material.dart';
import 'package:flutterverseone/components/single_product.dart';
import 'package:flutterverseone/constants.dart';
import 'package:flutterverseone/screens/product_screen.dart';

class ProductList extends StatelessWidget {
  const ProductList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: productList.length,
        itemBuilder: (context, index) {
          return Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductScreen(index: index),
                    ),
                  );
                },
                child: SingleProduct(
                  name: productList[index]["name"],
                  percentOff: productList[index]["percentOff"],
                  image: productList[index]["image"],
                  price: productList[index]["price"],
                  originalPrice: productList[index]["originalPrice"],
                ),
              ),
              const SizedBox(
                width: 20,
              )
            ],
          );
        },
      ),
    );
  }
}
