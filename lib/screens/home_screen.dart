import 'package:flutter/material.dart';
import 'package:flutterverseone/components/search_box.dart';
import 'package:flutterverseone/components/category_widget.dart';
import 'package:flutterverseone/components/item_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFFF5EB),
        elevation: 0.0,
        title: Row(
          children: [
            Icon(
              Icons.menu,
              color: Colors.black,
            ),
            Spacer(),
            Text(
              "Pizza",
              style: TextStyle(
                  color: Color(0xff38465B),
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "corner",
              style: TextStyle(
                  color: Color(0xffD5A159),
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            Spacer(),
            Icon(
              Icons.notifications,
              color: Colors.black,
            ),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        height: 800,
        width: 500,
        color: Color(0xffFFF5EB),
        child: Column(
          children: [
            SearchBox(),
            SizedBox(height: 30),
            CategoryWidget(),
            SizedBox(height: 30),
            ItemWidget(),
            SizedBox(height: 20),
            Row(
              children: [
                Text(
                  "Popular Pizza 🔥",
                  style: TextStyle(fontSize: 27),
                ),
                Spacer(),
                Text(
                  "view all",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xffBCB2A8),
                  ),
                ),
                SizedBox(width: 20),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 80,
        color: Color(0xffFFF5EB),
        child: Container(
          height: 70,
          decoration: BoxDecoration(
            color: Color(0xffFAEAD3),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Color(0xff2C2E43),
                    borderRadius: BorderRadius.circular(30)),
                child: Row(
                  children: [
                    Icon(
                      Icons.home,
                      color: Color(0xffFFF5EB),
                    ),
                    SizedBox(width: 5),
                    Text(
                      "Home",
                      style: TextStyle(
                        color: Color(0xffFFF5EB),
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.auto_awesome_mosaic_rounded,
                color: Color(0xffBCB2A8),
                size: 35,
              ),
              Icon(
                Icons.shopping_cart,
                color: Color(0xffBCB2A8),
                size: 35,
              ),
              Icon(
                Icons.person,
                color: Color(0xffBCB2A8),
                size: 35,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
