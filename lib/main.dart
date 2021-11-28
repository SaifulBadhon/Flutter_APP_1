import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';

// void main(){
//   runApp(MyApp());

// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget{
@override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState(); 
  }

}

class _MyAppState extends State<MyApp>{


var _questions = [
{
  "questionText" : "Whats your fav colour",
  "answers" : [{"text" :"Black", "score":10},{"text" :"Red", "score":5},{"text" :"Blue", "score":3}]
},
{
  "questionText" : "Whats your fav fruit",
  "answers" : [{"text" :"Black Berry", "score":10},{"text" :"Red Cherry", "score":5},{"text" :"Blue Berry", "score":3}]
},

{
  "questionText" : "Who is your fav dev",
  "answers" : [{"text" :"Saiful", "score":10},{"text" :"Badhon", "score":5},{"text" :"SaifulBadhon", "score":3}]
},

];

var _queInd = 0;
var _totalScore = 0;

void _reset(){
  setState(() {
      _queInd = 0;
      _totalScore = 0;
    });
}
void _answerQuestion(int score){
  _totalScore+= score;


  setState(() {
      _queInd = _queInd+1;
    });
}




  @override
  Widget build(BuildContext context){
    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text("My First App"),),
      body: _queInd >= _questions.length? 
      Result(_totalScore,_reset) : 
      Quiz(answerQuestion: _answerQuestion,
      questions: _questions,
      queInd: _queInd)

    ),);
  }
}