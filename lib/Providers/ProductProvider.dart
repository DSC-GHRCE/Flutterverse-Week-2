import 'dart:ui';

import '../Helpers/ProductDetails.dart';

class SpecificationOfProduct{
  String id;
  String fit;
  String material;
  String pattern;
  String sleeves;
  String closure;

  SpecificationOfProduct({
    required this.id,
    required this.fit,
    required this.material,
    required this.pattern,
    required this.sleeves,
    required this.closure,
});

}

class Product {
  String id;
  String brand;
  String product;
  String collection;
  String price;
  String year;
  bool isFav = false;
  String productImg;
  Color selectColor = const Color(0x000000FF);
  String productSize = 'L';
  SpecificationOfProduct specs;

  Product({
    required this.id,
    required this.brand,
    required this.product,
    required this.collection,
    required this.price,
    required this.year,
    required this.productImg,
    required this.specs
  });

}

class ProductAccess {
  ProductAccess(){
    generateProductSpecificationList;
    generateProductList;
  }

  List<SpecificationOfProduct> listOfProductsSpecifications = [];

  void get generateProductSpecificationList {
    for (var val in productSpecs) {
      listOfProductsSpecifications.add(
          SpecificationOfProduct(
              id: val['id']!,
              fit: val['fit']!,
              material: val['material']!,
              pattern: val['pattern']!,
              sleeves: val['sleeves']!,
              closure: val['closure']!,
      )
      );
    }
  }

  List<Product> listOfProducts = [];

  void get generateProductList {
    for (var val in products) {
      listOfProducts.add(Product(
          id: val['id']!,
          brand: val['brand']!,
          product: val['product']!,
          collection: val['collection']!,
          price: val['price']!,
          year: val['year']!,
          productImg: val['productImg']!,
          specs: listOfProductsSpecifications.firstWhere((element){
            return element.id == val['id'];
          }),
      )
      );
    }
  }

  List<Product> listOfFavProducts = [];

  List get productList {
    return listOfProducts;
  }

  List get favProductList {
    return listOfFavProducts;
  }

}