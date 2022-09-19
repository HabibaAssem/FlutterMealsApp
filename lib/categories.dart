import 'package:flutter/material.dart';
import 'models/category.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    print(width);
    return GridView(
      padding: const EdgeInsets.all(15),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: (300 / 393) * width, //width
        childAspectRatio: 4 / 3, //reation between widthh and height
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: dummy_categories,
    );
  }
}
