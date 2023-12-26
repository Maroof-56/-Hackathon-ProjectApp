import 'package:flutter/material.dart';

class Data{

  const Data({
      required this.heading,
      required this.contentData,
      required this.color,
      required this.categories,
  });

  final String heading;
  final List<String> categories;
  final String contentData;
  final Color color;
}