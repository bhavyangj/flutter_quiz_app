import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_quiz_app/data/categories.dart';
import 'package:flutter_quiz_app/page/category_page.dart';
import 'package:flutter_quiz_app/page/home_page.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Quiz';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: HomePage(),
    );
  }
}
