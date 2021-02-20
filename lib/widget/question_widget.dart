import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/model/category.dart';
import 'package:flutter_quiz_app/model/option.dart';
import 'package:flutter_quiz_app/model/question.dart';
import 'package:flutter_quiz_app/widget/options.dart';

class QuestionsWidget extends StatelessWidget {

  final Category category;
  final PageController controller;
  final ValueChanged<int> onChangedPage;
  final ValueChanged<Option> onClickedOption;

  const QuestionsWidget({
    Key key,
    @required this.category,
    @required this.controller,
    @required this.onChangedPage,
    @required this.onClickedOption,
  }) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        onPageChanged: onChangedPage,
        controller: controller,
        itemCount: category.questions.length,
        itemBuilder: (context, index){
          final question = category.questions[index];
          return buildQuestion(question: question);
        },
    );
  }
  Widget buildQuestion({
    @required Question question,
  }) => Container(
    padding: const EdgeInsets.all(16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 32,),
        Text(
            question.text,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8,),
        Text(
          'Choose your answer below',
          style: TextStyle(fontStyle: FontStyle.italic, fontSize: 16),
        ),
        SizedBox(height: 32,),
        Expanded(
          child: OptionsWidget(
            question: question,
            onClickedOption: onClickedOption,
          ),
        )
      ],
    ),
  );
}
