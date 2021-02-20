import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/model/option.dart';

class Question{
  final String text;
  final List<Option> options;
  final String solution;
  bool isLocked;
  Option selectedOption;

  Question({
    @required this.text,
    @required this.options,
    @required this.solution,
    this.isLocked = false,
    this.selectedOption,
  });

}