import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/model/category.dart';
import 'package:flutter_quiz_app/model/option.dart';
import 'package:flutter_quiz_app/model/question.dart';
import 'package:flutter_quiz_app/widget/question_number.dart';
import 'package:flutter_quiz_app/widget/question_widget.dart';


class CategoryPage extends StatefulWidget {
  final Category category;

  const CategoryPage({Key key, @required this.category}) : super(key : key);
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  PageController controller;
  Question question;

  @override
  void initState(){
    super.initState();
    controller = PageController();
    question = widget.category.questions.first;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: QuestionsWidget(
        category: widget.category,
        controller: controller,
        onChangedPage: (index) => nextQuestion(index: index),
        onClickedOption: selectOption,
      ),
      bottomNavigationBar: Container(
        child: RaisedButton(
          onPressed: () {print("clicked");},
          textColor: Colors.white,
          padding: EdgeInsets.all(5),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.purple, Colors.deepOrange],
              ),
            ),
            padding: EdgeInsets.all(10),
            child: Text('Submit Quiz', style: TextStyle(fontSize: 20),),
          ),
        ),
      ),
    );
  }

  Widget buildAppBar(context) => AppBar(
    title: Text(widget.category.categoryName),
    actions: [
      Icon(Icons.filter_alt_outlined),
      SizedBox(width: 16,)
    ],
    flexibleSpace: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.deepOrange, Colors.purple
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
      ),
    ),
    bottom: PreferredSize(
      preferredSize: Size.fromHeight(80),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16),
        child: QuestionNumbersWidget(
          questions: widget.category.questions,
          question: question,
          onClickedNumber: (index) => nextQuestion(index: index, jump: true),
        ),
      ),
    ),
  );


  void selectOption(Option option){
    if(question.isLocked){
      return;
    } else{
      setState(() {
        question.isLocked = true;
        question.selectedOption = option;
      });
    }
  }

  void nextQuestion({int index, bool jump = false}){
    final nextPage = controller.page + 1;
    final indexPage = index ?? nextPage.toInt();
    setState(() {
      question = widget.category.questions[indexPage];
    });
    if(jump)
      controller.jumpToPage(indexPage);
  }
}
