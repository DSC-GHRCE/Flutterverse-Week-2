import 'package:flutter/material.dart';
import 'package:flutterverseone/components/advertise.dart';
import 'package:flutterverseone/components/navigation_bar.dart';
import 'package:flutterverseone/components/product_list.dart';
import 'package:flutterverseone/components/top_category.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Row(
          children: const [
             Icon(
              Icons.menu,
              color: Colors.black,
            ),
            Spacer(),
            Icon(
              Icons.search,
              color: Colors.black,
            ),
          ],
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:const [
              Text(
                'Hello Ram',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto'),
              ),
              Text(
                'lets gets somethings?',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Advertise(),
              SizedBox(
                height: 30,
              ),
              TopCategory(),
              SizedBox(
                height: 25,
              ),
              ProductList(),
            ],
          ),
        ),
      ),
      bottomNavigationBar:const MyNavigationBar(),
    );
  }
}
