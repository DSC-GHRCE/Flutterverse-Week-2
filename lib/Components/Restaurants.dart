import 'package:flutter/material.dart';

import '../constants.dart';
import 'RestPage.dart';

class Heading3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
         Container(
           height: 20,
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(8),
             color: Colors.grey[100],
           ),
           child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 1),
            child: Text(
              "Top Picks For You",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
                fontSize: 15,
              ),
            ),
        ),
         ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 75,),
          child: const Divider(
            height: 15,
            thickness: 0.5,
            endIndent: 0,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}

class Restaurants extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      Container(
      height: 320,
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
                  builder: (context) => Restaurant_Page(index: index),
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
                              listOfcategories[index]["iconPath"]!,
                              width: 100,
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              listOfcategories[index]["name"]!,
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
                                    listOfcategories[index]["star"]!,
                                    style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Text(
                                    listOfcategories[index]["type"]!,
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
                                          listOfcategories[index]["time"]!,
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
                                        listOfcategories[index]["distance"]!,
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
                        TextButton(
                          onPressed: () {  },
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
