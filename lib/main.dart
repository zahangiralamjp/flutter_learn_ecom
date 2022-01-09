import 'package:flutter/material.dart';
import 'package:flutter_learn_ecom/screenPage/ProductCatagorie.dart';
import 'package:flutter_learn_ecom/screenPage/homePage.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.amber),
    title: 'Product List',
    home: HomePage(),
  ));
}
