import 'package:flutter/material.dart';
import 'Stack.dart';

StackBrain s = StackBrain();

const List<String> operands = ['1','2','3','4','5','6','7','8','9','0'];
const List<String> operators = ['+','-','x','/','%','^'];
const List<String> brackets = ['(',')'];


class CalculationBrain{

  String _questionString = '0';
  String _answerString;

  int precedence(String symbol){
    int result;
    switch(symbol){
      case '&':result =  0;
                  break;
      case '(': result= 0;
                break;
      case '+': result= 1;
                break;
      case '-' : result= 1;
                break;
      case '*' : result= 2;
                break;
      case '/' : result= 2;
                  break;
      case '%' : result= 2;
                  break;
      case '^' : result= 3;
                  break;
    }
    return result;
  }

  //Validate the Question String

  //Convert to postfix
  String convertToPostfix(String question){
    String postfixQuestion = '';
    String ch;
    s.push('&');
    for(int i = 0 ; i < question.length;i++){
      String current = question[i];
      if(operands.contains(current)){
        postfixQuestion += current;
      } else {
        switch(current){
          case '(' : s.push(current);
          break;
          case ')' : while((ch = s.pop()) != '('){
            postfixQuestion += ch;
          }
          break;

          default : while(precedence(current) <= precedence(s.top())){
            postfixQuestion += '#' + s.pop();
          }
          s.push(current);
        }
      }
    }
    while(s.top() != '='){
      postfixQuestion += s.pop();
    }

    postfixQuestion += '\0';

    return postfixQuestion;
  }
  String validation(String buttonText){
    //Test Cases
//    if(operands.contains(buttonText) || brackets.contains(buttonText) || operators.contains(buttonText)){
//      _questionString += buttonText;
//    }
    _questionString += buttonText;
    return _questionString;
  }

}

