import 'package:flutter/material.dart';

class ProductModel {
  IconData productIcon;
  String name;
  double price;
  int countity;

  ProductModel({
    required this.productIcon,
    required this.name,
    required this.price,
    this.countity = 0,
  });
}
