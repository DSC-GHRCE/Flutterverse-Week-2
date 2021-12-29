import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutterverseone/constants.dart';

class ItemScreen extends StatelessWidget {
  final index;
  const ItemScreen({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Color(0xffFFF5EB),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Pizza",
              style: TextStyle(
                  color: Color(0xff38465B),
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "corner",
              style: TextStyle(
                  color: Color(0xffD5A159),
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color(0xffFFF5EB),
        padding: EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage("${pizzas[index]["img"]}"),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color(0xffFAEAD3),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "${pizzas[index]["name1"]} ${pizzas[index]["name2"]}",
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff2C2E43),
                        ),
                      ),
                      Spacer(),
                      Text(
                        "${pizzas[index]["price"]}",
                        style: TextStyle(
                          fontSize: 25,
                          color: Color(0xffC7985f),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Text(
                    "With Cheese",
                    style: TextStyle(
                      color: Color(0xffBCB2A8),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.star,
                        color: Color(0xffC7985f),
                        size: 18,
                      ),
                      SizedBox(width: 3),
                      Text(
                        "${pizzas[index]["rating"]}",
                        style: TextStyle(fontSize: 18),
                      ),
                      Spacer(),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: Color(0xff2C2E43),
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text(
                          "Add to cart",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Text(
              "Description",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xff2C2E43),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "         Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec felis ullamcorper, commodo magna et, efficitur velit. In porta dui in risus commodo accumsan. Praesent massa diam, ultrices nec lorem ac, imperdiet tincidunt nisl. Mauris faucibus quam erat, nec tempus.",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Spacer(),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color(0xff2C2E43),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  "Order now",
                  style: TextStyle(
                    fontSize: 22,
                    color: Color(0xffFFF5EB),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
