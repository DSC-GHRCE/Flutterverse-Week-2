import 'package:flutter/material.dart';

import 'Components/Appbar.dart';
import 'Components/Discounts.dart';
import 'Components/Popular_cat.dart';
import 'Components/Restaurants.dart';
import 'Components/bottomNavBar.dart';
import 'Components/search_bar.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text("Food_Grid"),
        actions: [
          MyAppBar(),
        ],
      ), //Appbar Ends here

      body: SingleChildScrollView(
        //physics: BouncingScrollPhysics(),
        child: Container(
          margin: const EdgeInsets.only(top: 2),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Search Bar
              SearchBarContainer(),
              const SizedBox(height: 10),
              DiscountTag(),
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
             DiscountSection(),
              const SizedBox(height: 5),
////////////////////////////////////////////////////////////////////////////////////////////////
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Heading2Tag(),
                  Popular_Section(),
                  const SizedBox(height: 15),
                  Heading3(),
                 Restaurants(),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: bottomNavBar(),
    );
  }
}