import 'package:flutter/material.dart';
import 'models/category.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(10),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200, //width
        childAspectRatio: 3 / 2, //reation between widthh and height
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: dummy_categories,
    );
  }
}
