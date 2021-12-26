import 'package:flutter/material.dart';
import 'package:flutterverseone/Components/HotDealsContainer.dart';
import 'package:flutterverseone/Components/PopularCate.dart';
import 'package:flutterverseone/Components/SearchBar.dart';
import 'package:flutterverseone/constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            Image.asset(
              "assets/amazonLogo.png",
              width: 100,
            ),
            Spacer(),
            Container(
              margin: EdgeInsets.all(10),
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(25)),
              child: const Icon(
                Icons.star,
                color: Colors.white,
              ),
            ),
            Container(
              height: 35,
              width: 35,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(25)),
              child: const Icon(
                Icons.menu,
                color: Colors.white,
                size: 20,
              ),
            )
          ],
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchBarContainer(),
            SizedBox(height: 10),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Text(
                          "Hot Deals",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22),
                        ),
                        const Spacer(),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Show More >",
                            style: TextStyle(
                                color: Color(0xffFF9D0D),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  HotDealsContainer(),
                  const SizedBox(height: 10),
                  PopularCate(),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width * 1,
        // color: Colors.red,
        child: Row(
          children: [
            Container(
              height: 50,
              width: 90,
              decoration: BoxDecoration(
                color: const Color(0xffFF9D0D),
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Icon(
                Icons.home_filled,
                color: Colors.white,
                size: 35,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10),
              height: 50,
              width: 90,
              decoration: BoxDecoration(
                color: const Color(0xffF2F2F2),
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Icon(
                Icons.search,
                color: Colors.black,
                size: 35,
              ),
            ),
            const Spacer(),
            Container(
                margin: const EdgeInsets.only(left: 10),
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                  color: const Color(0xffF2F2F2),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Rs 7654",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    CircleAvatar(
                      backgroundColor: const Color(0xffFF9D0D),
                      child: Text(
                        "3",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
