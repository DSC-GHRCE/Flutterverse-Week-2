import 'package:flutter/material.dart';
import 'ProductCaseWidget.dart';
import '../../Providers/CategoryProvider.dart';
import '../../Providers/ProductProvider.dart';

import 'CategoryCaseWidget.dart';

class CategoryShelf extends StatelessWidget {
  const CategoryShelf({
    Key? key,
    required this.listOfCategory,
  }) : super(key: key);

  final List<Category> listOfCategory;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CategoryCase(categoryItem: listOfCategory[0]),
        const SizedBox(height: 10,),
        CaseRow(listOfCategory: listOfCategory, a: 1, b: 2),
        const SizedBox(height: 10,),
        CaseRow(listOfCategory: listOfCategory, a: 3, b: 4),
        const SizedBox(height: 10,),
        CategoryCase(categoryItem: listOfCategory[5]),
        const SizedBox(height: 20,),
      ],
    );
  }
}

class NewArrivalShelf extends StatelessWidget {
  const NewArrivalShelf({
    Key? key,
    required Size screenSize,
    required this.newArrivals,
  }) : _screenSize = screenSize, super(key: key);

  final Size _screenSize;
  final List<Product> newArrivals;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 340,
      width: _screenSize.width,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: newArrivals.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context,int index){
            if(index == 0){
              return Row(
                children: [
                  const SizedBox(width: 20,),
                  ProductCase(item: newArrivals[index], index: index, lenOfList: newArrivals.length,),
                ],
              );
            }
            else if(index == newArrivals.length - 1){
              return Row(
                children: [
                  ProductCase(item: newArrivals[index], index: index, lenOfList: newArrivals.length,),
                  const SizedBox(width: 20,),
                ],
              );
            }
            else{
              return ProductCase(item: newArrivals[index], index: index, lenOfList: newArrivals.length,);
            }
          }),
    );
  }
}

class PopularShelf extends StatelessWidget {
  const PopularShelf({
    Key? key,
    required Size screenSize,
    required this.popular,
  }) : _screenSize = screenSize, super(key: key);

  final Size _screenSize;
  final List<Product> popular;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 340,
      width: _screenSize.width,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: popular.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context,int index){
            if(index == 0){
              return Row(
                children: [
                  const SizedBox(width: 20,),
                  ProductCase(item: popular[index], index: index, lenOfList: popular.length,),
                ],
              );
            }
            else if(index == popular.length - 1){
              return Row(
                children: [
                  ProductCase(item: popular[index], index: index, lenOfList: popular.length,),
                  const SizedBox(width: 20,),
                ],
              );
            }
            else{
              return ProductCase(item: popular[index], index: index, lenOfList: popular.length,);
            }
          }),
    );
  }
}