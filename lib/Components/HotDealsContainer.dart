import 'package:flutter/material.dart';
import 'package:flutterverseone/ExtendedUI.dart';
import 'package:flutterverseone/constants.dart';

class HotDealsContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: productList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ExtendedUi(index: index),
                ),
              );
              // Navigator.pushNamed(context, "/extended", arguments: {
              //   "index": index,
              // });
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                  color: Color(0xffF2F2F2),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Image.asset(
                        productList[index]["imagePath"]!,
                        width: 100,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Text(
                          productList[index]["name"]!,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text(
                          productList[index]["price"]!,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Text(
                          productList[index]["companyName"]!,
                        ),
                        Spacer(),
                        Text(
                          productList[index]["deliveryTime"]!,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
