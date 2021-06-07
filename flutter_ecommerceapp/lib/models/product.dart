import 'package:cloud_firestore/cloud_firestore.dart';

class Products{
//  constants
  static const String BRAND = 'brand';
  static const String CATEGORY = 'category';
  static const String ID = 'id';
  static const String NAME = 'name';
  static const String PICTURE = 'picture';
  static const String PRICE = 'price';
  static const String QUANTITY = 'quantity';
  static const String SIZE = 'size';


  //  private variables
  String _brand;
  String _category;
  String _id;
  String _name;
  String _picture;
  double _price;
  int _quantity;
  List<String> _size;


//  getters
  String get brand => _brand;
  String get category => _category;
  String get id => _id;
  String get name => _name;
  String get picture => _picture;
  double get price => _price;
  int get quantity => _quantity;
  List<String> get size => _size;

  Products.fromSnapshot(DocumentSnapshot snapshot){
    Map data = snapshot.data();
    _brand = data[BRAND];
    _category = data[CATEGORY];
    _id = data[ID];
    _name = data[NAME];
    _picture = data[PICTURE];
    _price = data[PRICE];
    _size = data[SIZE];
    _quantity = data[QUANTITY];
  }

}