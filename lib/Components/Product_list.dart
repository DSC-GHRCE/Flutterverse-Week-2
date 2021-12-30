import 'package:flutter/material.dart';
import 'package:flutterverseone/Components/ProductPage.dart';
import 'package:flutterverseone/HomeScreen.dart';

import '../constants.dart';
import 'RestPage.dart';

class ProductList2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      margin: const EdgeInsets.symmetric(vertical: 0),
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: listOfcategories.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductPage(index: index),
                ),
              );
            },
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 2),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color(0xffF2F2F2),
                            Colors.white,
                            Color(0xffF2F2F2),
                          ],
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(2.0, 3.0),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      children: [
                        Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              //color: Colors.grey[100],
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: Image.asset(
                              PizzaList[index]["pizzaImage"]!,
                              width: 100,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              PizzaList[index]["name"]!,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 0),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.star,
                                    size: 20,
                                    color: Color(0xffFFD700),
                                  ),
                                  const SizedBox(width: 4),
                                  Text(
                                    listOfcategories[index]["star"]!,
                                    style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 7),
                              child: Row(
                                children: [
                                  const Text(
                                    "Rs.",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(width: 2),
                                  Text(
                                    PizzaList[index]["price"]!,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                ],
                              ),
                            ),

                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextButton(
                                    onPressed: () {  },
                                    child: Container(
                                      height: 40,
                                      padding: EdgeInsets.symmetric(horizontal: 10),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        // color: Colors.yellow[400],
                                          gradient: const LinearGradient(
                                            colors: [
                                              Colors.yellow,
                                              Colors.yellowAccent,
                                              Colors.yellow,
                                            ],
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.withOpacity(0.5),
                                              spreadRadius: 2,
                                              blurRadius: 5,
                                              offset: Offset(3.0, 4.0),
                                            )
                                          ]
                                      ),
                                     // margin: const EdgeInsets.symmetric(horizontal: 5),
                                      child: Row(
                                        children: const[
                                          Icon(
                                            Icons.add_circle,
                                            size: 22,
                                            color: Colors.deepPurple,
                                            //color: Color(0xffFFD700),
                                          ),
                                          Text(
                                            " Add to Cart",
                                            style:  TextStyle(
                                              fontSize: 15,
                                              color: Colors.deepPurple,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                ],

                              ),

                          ],
                        ),
                        const Spacer(),
                        TextButton(
                          onPressed: () {},
                          child: const Icon(
                            Icons.favorite_border,
                            size: 30,
                            color: Colors.deepPurple,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
