import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_ecommerceapp/models/product.dart';

class ProductsService{

  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  String collection ='Products' ;

  Future <List<Products>> getFeaturedProducts() => _firestore.collection(collection).get().then((snaps){
    List<Products> featuredProducts = [];
    snaps.docs.map((snapshot) => featuredProducts.add(Products.fromSnapshot(snapshot)));
    return featuredProducts;

  }) ;
}