import 'package:flutter/material.dart';
import 'package:meals_app/category_meals.dart';

class Category extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  const Category(
      {required this.id, required this.title, this.color = Colors.orange});

  void goToCategory(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return CategoryMeal(
        ID: id,
        category: title,
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      //like gesture detector bass beye3mel alwan we keda
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      onTap: () => goToCategory(context),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [color.withOpacity(0.5), color],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontFamily: 'Raleway',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
      ),
    );
  }
}

// ignore: constant_identifier_names
const dummy_categories = [
  Category(id: "c1", title: "Italian", color: Colors.purple),
  Category(id: "c2", title: "Quick & Easy", color: Colors.red),
  Category(id: "c3", title: "Hamburgers", color: Colors.yellow),
  Category(id: "c4", title: "German", color: Colors.amber),
  Category(id: "c5", title: "Light", color: Colors.blue),
  Category(id: "c6", title: "Exotic", color: Colors.green),
  Category(id: "c7", title: "Breakfast", color: Colors.lightBlue),
  Category(id: "c8", title: "Asian", color: Colors.lightGreen),
  Category(id: "c9", title: "French", color: Colors.pink),
  Category(id: "c10", title: "Summer", color: Colors.teal),
  Category(id: "c11", title: "Turkish", color: Colors.deepOrange),
  Category(id: "c12", title: "Korean", color: Colors.lime),
];
