import 'package:flutter/material.dart';


class Category{

  const Category({
    required this.id,
    required this.icon,
    required this.title,
      this.color = Colors.white,
    
    });
  final String id;
  final IconData icon;
  final String title;
  final Color color;

}