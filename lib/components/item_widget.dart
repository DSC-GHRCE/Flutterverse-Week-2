import 'package:flutter/material.dart';
import 'package:flutterverseone/constants.dart';
import 'package:flutterverseone/screens/ItemScreen.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 370,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemCount: pizzas.length,
        itemBuilder: (context, index) {
          return Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ItemScreen(index: index),
                    ),
                  );
                },
                child: Container(
                  height: 350,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Color(0xffFAEAD3),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20),
                        Center(
                          child: CircleAvatar(
                            radius: 70,
                            backgroundImage:
                                AssetImage("${pizzas[index]["img"]}"),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "${pizzas[index]["name1"]}",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff2C2E43),
                          ),
                        ),
                        Text(
                          "${pizzas[index]["name2"]}",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff2C2E43),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "With Cheese",
                          style: TextStyle(
                            color: Color(0xffBCB2A8),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "${pizzas[index]["price"]}",
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xffC7985f),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Spacer(),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Color(0xff2C2E43),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Icon(
                                Icons.add,
                                size: 30,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 40,
              )
            ],
          );
        },
      ),
    );
  }
}
