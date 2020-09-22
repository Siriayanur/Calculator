import 'package:flutter/material.dart';
import 'constants.dart';


class ButtonCalc extends StatelessWidget {
  ButtonCalc(
      {@required this.buttonText,
        @required this.buttonColor,
      @required this.textStyle
      });

  final String buttonText;
  final Color buttonColor;
  final TextStyle textStyle;

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
        calculation(buttonText);
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      fillColor:buttonColor,
      elevation: 5,
      constraints: BoxConstraints.tightFor(width: 70.0,height: 65.0),
    );
  }
}

