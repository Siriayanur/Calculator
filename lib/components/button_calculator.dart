import 'package:flutter/material.dart';
import '../constants.dart';
import '../Calculation/calculation_brain.dart';

class ButtonCalc extends StatelessWidget {
  ButtonCalc(
      {@required this.buttonText,
        @required this.buttonColor,
      @required this.textStyle,
        this.calculationBrain
      });

  final String buttonText;
  final Color buttonColor;
  final TextStyle textStyle;
  final CalculationBrain calculationBrain;

  @override
  Widget build(BuildContext context) {
    void calculation(String buttonText){
      
    }
    return RawMaterialButton(
      child: Text(
        buttonText,
        style: textStyle,
      ),
      onPressed: (){
        calculationBrain.convertToPostfix(buttonText);
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      fillColor:buttonColor,
      elevation: 5,
      constraints: BoxConstraints.tightFor(width: 70.0,height: 65.0),
    );
  }
}

