import 'package:flutter/material.dart';

import '../constants.dart';
import 'Appbar.dart';
import 'Product_list.dart';
import 'RestPage.dart';
import 'bottomNavBar.dart';

class Pizza_Page extends StatelessWidget {
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
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.arrow_back_ios_outlined,
                    size: 24,
                    color: Colors.deepPurple,
                  ),

                  const SizedBox(width: 5),
                  Text(
                    "Farmhouse",
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsets.only(bottom: 30),
              height: 260,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Image.asset(
                "assets/Farmhouse.jpg",
                width: 500,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              height: 135,
              child: const Text(
                "Lorem ipsum dolor sit amet, consectetur madan adipiscing elit. Donec rhoncus elit eu pretium jannu pellentesque. Vestibulum tincidunt pellentesque ipsum at sollicitudin. Nullam egestas vestibulum consectetur. Proin eu tempor massa, nec hendrerit augue. Nulla in ultricies nisi. Mauris augue nibh.",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0),
              child: Row(
                children: [
                  const SizedBox(width: 18),
                  const Icon(
                    Icons.star,
                    size: 20,
                    color: Color(0xffFFD700),
                  ),
                  const SizedBox(width: 4),
                  Text(
                    "4.2",
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Row(
                children: [
                  const Text(
                    "Rs.",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 2),
                  Text(
                    "349",
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 10),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 5),
              child: Column(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Container(
                      height: 50,
                      width: 220,
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
                          ]),
                      // margin: const EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.add_circle,
                            size: 25,
                            color: Colors.deepPurple,
                            //color: Color(0xffFFD700),
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Add to Cart",
                            style: TextStyle(
                              fontSize: 25,
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
            ),
          ],
        ),
      ),
      bottomNavigationBar: bottomNavBar(),
    );
  }
}
