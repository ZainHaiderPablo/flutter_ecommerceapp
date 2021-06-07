import 'package:flutter/material.dart';
import 'package:flutter_ecommerceapp/DataBase/products.dart';
import 'package:flutter_ecommerceapp/models/product.dart';

class AppProvider with ChangeNotifier{
 List<Products> _featureProducts = [];
 ProductsService _productsService = ProductsService();

 AppProvider(){
  _getFeaturedProducts();
 }

 //getter
  List<Products> get featureProducts => _featureProducts;

 void _getFeaturedProducts() async {
  _featureProducts = await _productsService.getFeaturedProducts();
  notifyListeners();

 }
}