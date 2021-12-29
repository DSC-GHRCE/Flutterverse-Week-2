// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutterverseone/constants.dart';

class ProductScreen extends StatelessWidget {
  final index;
  const ProductScreen({Key? key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Row(
          children: const [
            Spacer(),
            Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black,
            ),
          ],
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image(
                height: 250,
                width: 250,
                image: AssetImage("${productList[index]["image"]}"),
              ),
            ),
            Text(
              "${productList[index]["name"]}",
              style: const TextStyle(fontSize: 30, color: Colors.black),
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow.shade600,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow.shade600,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow.shade600,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow.shade600,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow.shade600,
                ),
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  "(4500 Reviews)",
                  style: TextStyle(color: Colors.black45),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text(
                  "${productList[index]["price"]}",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  "${productList[index]["originalPrice"]}",
                  style: TextStyle(
                    color: Colors.grey.shade500,
                    decoration: TextDecoration.lineThrough,
                    fontSize: 10,
                  ),
                ),
                const Spacer(),
                const Text(
                  "Available in stock",
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "About",
              style: TextStyle(fontSize: 25, color: Colors.black54),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec felis ullamcorper, commodo magna et, efficitur velit. In porta dui in risus commodo accumsan. Praesent massa diam, ultrices nec lorem ac, imperdiet tincidunt nisl. Mauris faucibus quam erat, nec tempus.",
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 18, color: Colors.black45),
            ),
            const Spacer(),
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.orange.shade700,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Center(
                child: Text(
                  "Add to Cart",
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
