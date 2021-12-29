import 'package:flutter/material.dart';
import '../../Widgets/Home/Shelves.dart';
import '../../Providers/CategoryProvider.dart';
import '../../Providers/ProductProvider.dart';

class NavHome extends StatefulWidget {
  const NavHome({Key? key}) : super(key: key);

  @override
  _NavHomeState createState() => _NavHomeState();
}

class _NavHomeState extends State<NavHome> {
  @override
  Widget build(BuildContext context) {
    double bottomPadding = MediaQuery.of(context).padding.bottom;
    ProductAccess prd = ProductAccess();
    CategoryAccess categories = CategoryAccess();
    List<Product> newArrivals = prd.listOfProducts.where((element) => element.year == '2021').toList();
    List<Product> popular = prd.listOfProducts.where((element) => element.year == '2020').toList();
    List<Category> listOfCategory = categories.listOfCategories;
    Size _screenSize = MediaQuery.of(context).size;
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          const SizedBox(height: 10,),
          const Center(
              child: Text(
                  'New Arrival',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              )
          ),
          const SizedBox(height: 20,),
          NewArrivalShelf(screenSize: _screenSize, newArrivals: newArrivals),
          const SizedBox(height: 10,),
          const Center(
              child: Text(
                'Popular',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              )
          ),
          const SizedBox(height: 20,),
          PopularShelf(screenSize: _screenSize, popular: popular),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(width: 20,),
              Container(
                padding: const EdgeInsets.only(left: 5),
                decoration: const BoxDecoration(
                  border: Border(
                    left: BorderSide( //                   <--- left side
                      color: Colors.black,
                      width: 3.0,
                    ),
                  )
                ),
                child: const Text(
                  'Categories',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
              const Expanded(child: SizedBox(width: 15,)),
              const Icon(Icons.person_search_rounded,size: 40,),
              const SizedBox(width: 20),
            ],
          ),
          const SizedBox(height: 10,),
          const SizedBox(height: 20,),
          CategoryShelf(listOfCategory: listOfCategory),
          SizedBox(height: bottomPadding,),
        ],
      ),
    );
  }
}





