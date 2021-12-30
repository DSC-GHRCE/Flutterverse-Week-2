import 'package:flutter/material.dart';
import 'package:flutterverseone/Components/PizzaPage.dart';
import 'package:flutterverseone/Components/SandwichPage.dart';

import 'BurgerPage.dart';

class Heading2Tag extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 15),

      child: Text(
        "Popular Categories",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 17,
        ),
      ),

    )
    ;
  }
}
class Popular_Section extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 5),
      height: 115,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: SingleChildScrollView(
       // physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(width: 10),
            Column(
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Pizza_Page(),
                      ),
                    );
                  },
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 45,
                    child: Image.asset('assets/pizza.png',
                        width: 75),
                  ),
                ),
                const Text(
                  "Pizza",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ],
            ),
            SizedBox(width: 10),
            Container(
              margin: const EdgeInsets.only(left: 15),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Burger_Page(),
                        ),
                      );
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 45,
                      child: Image.asset('assets/burger.png',
                          height: 80),
                    ),
                  ),
                  const Text(
                    "Burger",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ],
              ),
            ),
            SizedBox(width: 10),
            Container(
              margin: const EdgeInsets.only(left: 15),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Sandwich_Page(),
                        ),
                      );
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 45,
                      child: Image.asset('assets/sandwich.png'),
                    ),
                  ),
                  const Text(
                    "Sandwich",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ],
              ),
            ),
            SizedBox(width: 10),
            Container(
              margin: const EdgeInsets.only(left: 15),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 45,
                    child: Image.asset('assets/roll.png'),
                  ),
                  const Text(
                    " Rolls",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ],
              ),
            ),
            SizedBox(width: 10),
          ],
        ),
      ),
    )
    ;
  }
}