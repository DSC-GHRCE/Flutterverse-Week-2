import 'package:flutter/material.dart';
import 'package:flutterverseone/constants.dart';

class Advertise extends StatelessWidget {
  const Advertise({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: advertise.length,
          itemBuilder: (context, index) {
            return Row(
              children: [
                Container(
                  height: 140,
                  width: 260,
                  decoration: BoxDecoration(
                    color:
                        index % 2 == 0 ? Colors.orange.shade800 : Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${advertise[index]["name"]}",
                            style: kAdvertiseTextStyle,
                          ),
                          const Text(
                            "Covid 19",
                            style: kAdvertiseTextStyle,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Text(
                              "Get Now",
                              style: TextStyle(
                                color: index % 2 == 0
                                    ? Colors.orange.shade800
                                    : Colors.blue,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Image(
                          width: 92,
                          image: AssetImage("${advertise[index]["img"]}"))
                    ],
                  ),
                ),
                const SizedBox(
                  width: 20,
                )
              ],
            );
          }),
    );
  }
}
