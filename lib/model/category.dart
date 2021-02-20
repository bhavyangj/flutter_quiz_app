import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/model/question.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Category{
  final String categoryName;
  final String description;
  final Color backgroundColor;
  final IconData icon;
  final List<Question> questions;
  final String imageUrl;

  Category({
    @required this.imageUrl,
    @required this.questions,
    @required this.categoryName,
    this.description = '',
    this.backgroundColor = Colors.orange,
    this.icon = FontAwesomeIcons.question,
  });
}