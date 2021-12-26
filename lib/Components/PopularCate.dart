import 'package:flutter/material.dart';
import 'package:flutterverseone/constants.dart';

class PopularCate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "Popular Categories",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 170,
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: listcategories.length,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      height: 55,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: const Color(0xffF2F2F2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            color: Colors.white,
                            child: Center(
                              child: Image.asset(
                                listcategories[index]["iconPath"]!,
                                width: 25,
                              ),
                            ),
                          ),
                          const SizedBox(width: 20),
                          Text(
                            listcategories[index]["name"]!,
                          ),
                          const Spacer(),
                          const Text(
                            ">",
                            style: TextStyle(
                                fontSize: 25,
                                color: Color(0xffFF9D0D),
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
