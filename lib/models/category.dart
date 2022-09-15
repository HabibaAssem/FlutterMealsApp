import 'dart:html';

import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  const Category(
      {required this.id, required this.title, this.color = Colors.orange});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Text(title),
      color: color,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [color.withOpacity(0.7), color],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
        borderRadius: BorderRadius.circular(15),
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
];
