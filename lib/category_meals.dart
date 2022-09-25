import 'package:flutter/material.dart';

class CategoryMeal extends StatelessWidget {
  String ID;
  String category;
  CategoryMeal({this.ID = "", required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("$category Recipes"),
      ),
      body: Center(
        child: Text("the recipes for the category"),
      ),
    );
  }
}
