import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/data/questions.dart';
import 'package:flutter_quiz_app/model/category.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final categories = <Category>[
  Category(
      imageUrl: 'https://blog.cambridgecoaching.com/hs-fs/hubfs/Physics%20SAT%20test.jpg?width=900&name=Physics%20SAT%20test.jpg',
      questions: questions,
      backgroundColor: Colors.lightBlueAccent,
      categoryName: 'physics',
      icon: FontAwesomeIcons.rocket,
      description: 'Practice questions physics'
  ),
  Category(
    imageUrl: 'https://www.thoughtco.com/thmb/XuJo7-P3gRDQshW69iFDNkFdS1U=/768x0/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-545286316-433dd345105e4c6ebe4cdd8d2317fdaa.jpg',
    questions: questions,
    backgroundColor: Colors.blue,
    categoryName: 'chemistry',
    icon: FontAwesomeIcons.atom,
    description: 'Practice questions chemistry'
  ),
  Category(
    imageUrl: 'https://scx1.b-cdn.net/csz/news/800a/2015/anewwayoftea.jpg',
    questions: questions,
    backgroundColor: Colors.blue,
    categoryName: 'Maths',
    icon: FontAwesomeIcons.squareRootAlt,
    description: 'Practice questions maths'
  ),
  Category(
    imageUrl: 'https://bitesizebio.com/wp-content/uploads/2020/08/2019-26420BacterialCRISPR-web.jpg',
    questions: questions,
    backgroundColor: Colors.lightBlueAccent,
    categoryName: 'biology',
    icon: FontAwesomeIcons.dna,
    description: 'Practice questions biology'
  ),
];