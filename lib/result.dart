import 'package:flutter/material.dart';
class Result  extends StatelessWidget {

  final int score;
  final Function reset;

  Result(this.score,this.reset);


  String get resultPhrase{
    String res;
    if(score<=8){
      res="Innocent!";
    } else if(score<=12){
      res = "Pretty";
    }else if(score<=16){
      res="Strange";
    }else{
      res="Bad";
    }
    return res;

  }
  @override
  Widget build(BuildContext context) {
    return Center(child: Column(
      children: [
        Text(resultPhrase, style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold)),
        TextButton(onPressed: reset, child: Text('Reset Quiz?')),        
      ],
    ));
  }
}