import 'package:flutter/material.dart';
import 'constants.dart';
import 'extended_page.dart';
class item_menu extends StatelessWidget {
  const item_menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Best Furniture",
            style: TextStyle(
              fontSize: 20,fontWeight: FontWeight.bold,
                color: Colors.green.shade900
            ),
          ),
          Text(
            "in your home.",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
                color: Colors.green.shade900
            ),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.lightGreen.shade200,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    Container(
                      width: 200,
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                decoration: BoxDecoration(
                  color: Colors.lightGreen.shade100,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Icon(Icons.settings_input_svideo),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            "Categories",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
                color: Colors.green.shade900,
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 30,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    GestureDetector(
                      onTap:(){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>extend_page(index:index),
                            ),
                        );
                      },
                      child: Container(
                        width: 70,
                        decoration: BoxDecoration(
                          color: index == 0
                              ? Colors.green.shade500
                              : Colors.lightGreen,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            "${categories[index]}",
                            style: TextStyle(
                              fontSize: 15,
                              color: index == 0 ? Colors.brown.shade900 : Colors.brown,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                  ],
                );
              },
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Text(
                "Top Chair",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold, color: Colors.green.shade900
                ),
              ),
              Spacer(),
              Text(
                "View All",
                style: TextStyle(
                  fontSize: 15,
                    color: Colors.green.shade900
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Container(
            height: 170,
            child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: chairs.length,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      GestureDetector(
                  onTap:()
                  {
                    Navigator.push(context,
                      MaterialPageRoute(
                        builder: (context) => extend_page(index: index),
                      ),
                    );
                  },
                        child: Container(
                          width: 190,
                          padding: EdgeInsets.all(18),
                          decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Container(
                                  child: Image.asset(
                                    "${chairs[index]["img"]}",
                                    height: 70,
                                    width: 100,
                                  ),
                                ),
                              ),
                              Text(
                                "${chairs[index]["name"]}",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green.shade900,
                                ),
                              ),
                              SizedBox(height: 5),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "Chair",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.brown.shade900,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "${chairs[index]["price"]}",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.brown.shade900,
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                      color: Colors.brown,
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
