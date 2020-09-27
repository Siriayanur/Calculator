import 'package:flutter/material.dart';


class IconButtonCalc extends StatelessWidget {

  IconButtonCalc({@required this.describeButton,@required this.buttonColor,@required this.icon,@required this.iconColor});

  final IconData icon;
  final Color iconColor;
  final Color buttonColor;
  final String describeButton;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon,color: iconColor,),
      onPressed:(){
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      fillColor:buttonColor,
      elevation: 6,
      constraints: BoxConstraints.tightFor(width: 70.0,height: 65.0),
    );
  }
}
