import 'package:flutter/material.dart';

import '../constants.dart';
import 'Appbar.dart';
import 'Product_list.dart';
import 'bottomNavBar.dart';

class Restaurant_Page extends StatelessWidget {
  int? index;
  Restaurant_Page({this.index});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text("Food_Grid"),
        actions: [
          MyAppBar(),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 15),
          child: Column(
            children: [
              Image.asset(
                listOfcategories[index!]["iconPath2"]!,
                width: MediaQuery.of(context).size.width,
              ),
              Container(
                margin: const EdgeInsets.only(left: 15, top: 15),
                child: Row(
                  children: [

                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          listOfcategories[index!]["name"]!,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.star,
                                size: 20,
                                color: Color(0xffFFD700),
                              ),
                              const SizedBox(width: 4),
                              Text(
                                listOfcategories[index!]["star"]!,
                                style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Text(
                                listOfcategories[index!]["type"]!,
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black45,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.purple[50],
                                ),
                                child: Row(
                                  children: [
                                    const SizedBox(width: 2),
                                    const Icon(
                                      Icons.timer_sharp,
                                      size: 18,
                                      color: Colors.deepPurple,
                                      //color: Color(0xffFFD700),
                                    ),
                                    Text(
                                      listOfcategories[index!]["time"]!,
                                      style: const TextStyle(
                                        fontSize: 14,
                                        color: Colors.deepPurple,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(width: 3, height: 22),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 12),
                              Row(
                                children: [
                                  Text(
                                    listOfcategories[index!]["distance"]!,
                                    style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black45),
                                  ),
                                  const Text(
                                    " km",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black45),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    const Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          height: 40,
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.purple[50],
                          ),
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            children: const[
                               Icon(
                                Icons.delivery_dining,
                                size: 22,
                                color: Colors.deepPurple,
                                //color: Color(0xffFFD700),
                              ),
                              Text(
                                "  Free Delivery",
                                style:  TextStyle(
                                  fontSize: 18,
                                  color: Colors.deepPurple,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                          child:  Text(
                            "24 Reviews",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black38,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],

                    ),
                  ],
                ),
              ),

              Container(
                padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 5),
                child: const Divider(
                  height: 15,
                  thickness: 0.5,
                  endIndent: 0,
                  color: Colors.grey,
                ),

              ),
              ProductList2(),
            ],
          ),

        ),
      ),
      bottomNavigationBar: bottomNavBar(),
    );
  }
}
