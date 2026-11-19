import 'package:flutter/material.dart';

class Products{
  final String nama, penulis;

  Products(this.nama , this.penulis);
  
}

class CartModel extends ChangeNotifier {

  final List<Products> _items = [];

  List<Products> get items => _items;
  int get totalItems => _items.length;

  void add(Products product){
    _items.add(product);
    notifyListeners();


  }
}