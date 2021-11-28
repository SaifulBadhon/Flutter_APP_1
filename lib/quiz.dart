import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String,Object>> questions;
  final Function answerQuestion;
  final int queInd;

  Quiz({this.questions,this.answerQuestion,this.queInd});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
        Question(questions[queInd]["questionText"]),

        ...(questions[queInd]["answers"] as List<Map<String,Object>>).map( (answer){
          return Answer(()=>answerQuestion(answer["score"]),answer["text"]);
        }).toList()
        
      ],);
  }
}