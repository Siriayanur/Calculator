import 'package:flutter/material.dart';
import 'constants.dart';
import 'icon_button_calculator.dart';
import 'button_calculator.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Calculation_brain.dart';
CalculationBrain c = CalculationBrain();



class CalculatorApp extends StatefulWidget {
  @override
  _CalculatorAppState createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: kScaffoldBgColor,
          title: Text('CALCULATOR',style: TextStyle(
            color: Color(0xff17506d),
            fontFamily: kFontSymbols,
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
          ),),
          centerTitle: true,
        ),
        backgroundColor: kScaffoldBgColor,
        body: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end, //final
              children: [
                Container(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10.0
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(10, 5, 5, 0),
                            child: Text(c.convertToPostfix('12-34'),style: TextStyle(
                              fontFamily: kFontQuestion ,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                            ),),
                          ),
                          Container(
                            padding: const EdgeInsets.fromLTRB(10, 10, 5, 0),
                            child: Text('0',style: TextStyle(
                              fontFamily: kFontQuestion ,
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),),
                          ),
                        ],
                      ),
                    )), // text child container
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ButtonCalc(
                            buttonText: 'C',
                            buttonColor: kClearButtonColor,
                            textStyle: kClearButtonTextStyle,
                          ),
                          ButtonCalc(
                            buttonText: '(',
                            buttonColor: kTopCenterButtonColor,
                            textStyle: TextStyle(
                              fontFamily: 'Quicksand',
                              color: Color(0xffA5884E),
                              fontSize: 30.0,
                            ),
                          ),
                          ButtonCalc(
                            buttonText: ')',
                            buttonColor: kTopCenterButtonColor,
                            textStyle: TextStyle(
                              fontFamily: 'Quicksand',
                              color: Color(0xffA5884E),
                              fontSize: 30.0,
                            ),
                          ),
                          ButtonCalc(
                            buttonText: '*',
                            buttonColor: kRightButtonColor,
                            textStyle: kRightButtonTextStyle,
                          ),
                        ],
                      ),
                      SizedBox( height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButtonCalc(
                            icon: FontAwesomeIcons.squareRootAlt,
                            iconColor: Color(0xffA5884E),
                            buttonColor: kTopCenterButtonColor,
                            describeButton: 'squareRoot',
                          ),
                          ButtonCalc(
                            buttonText: '%',
                            buttonColor:  kTopCenterButtonColor,
                            textStyle: kTopCenterButtonTextStyle,
                          ),
                          ButtonCalc(
                            buttonText: '^',
                            buttonColor: kTopCenterButtonColor,
                            textStyle: TextStyle(
                              fontFamily: 'Quicksand',
                              color: Color(0xffA5884E),
                              fontSize: 30.0,
                            ),
                          ),
                          ButtonCalc(
                            buttonText: '/',
                            buttonColor:  kRightButtonColor,
                            textStyle: kRightButtonTextStyle,
                          ),
                        ],
                      ),
                      SizedBox( height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ButtonCalc(
                            buttonText: '7',
                            buttonColor: kScaffoldBgColor,
                            textStyle: kBottomCenterButtonTextStyle,
                          ),
                          ButtonCalc(
                            buttonText: '8',
                            buttonColor: kScaffoldBgColor,
                            textStyle: kBottomCenterButtonTextStyle,
                          ),
                          ButtonCalc(
                            buttonText: '9',
                            buttonColor: kScaffoldBgColor,
                            textStyle: kBottomCenterButtonTextStyle,
                          ),
                          ButtonCalc(
                            buttonText: '-',
                            buttonColor:  kRightButtonColor,
                            textStyle: kRightButtonTextStyle,
                          ),
                        ],
                      ),
                      SizedBox( height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ButtonCalc(
                            buttonText: '4',
                            buttonColor: kScaffoldBgColor,
                            textStyle: kBottomCenterButtonTextStyle,
                          ),
                          ButtonCalc(
                            buttonText: '5',
                            buttonColor: kScaffoldBgColor,
                            textStyle: kBottomCenterButtonTextStyle,
                          ),
                          ButtonCalc(
                            buttonText: '6',
                            buttonColor: kScaffoldBgColor,
                            textStyle: kBottomCenterButtonTextStyle,
                          ),
                          ButtonCalc(
                            buttonText: '+',
                            buttonColor:  kRightButtonColor,
                            textStyle: kRightButtonTextStyle,
                          ),
                        ],
                      ),
                      SizedBox( height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ButtonCalc(
                            buttonText: '3',
                            buttonColor: kScaffoldBgColor,
                            textStyle: kBottomCenterButtonTextStyle,
                          ),
                          ButtonCalc(
                            buttonText: '2',
                            buttonColor: kScaffoldBgColor,
                            textStyle: kBottomCenterButtonTextStyle,
                          ),
                          ButtonCalc(
                            buttonText: '1',
                            buttonColor: kScaffoldBgColor,
                            textStyle: kBottomCenterButtonTextStyle,
                          ),
                          IconButtonCalc(
                            icon: FontAwesomeIcons.eraser,
                            iconColor: Colors.deepPurple,
                            buttonColor: kRightButtonColor,
                            describeButton: 'clearOne',
                          ),
                        ],
                      ),
                      SizedBox( height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ButtonCalc(
                            buttonText: '0',
                            buttonColor: kScaffoldBgColor,
                            textStyle: kBottomCenterButtonTextStyle,
                          ),
                          ButtonCalc(
                            buttonText: '.',
                            buttonColor: kScaffoldBgColor,
                            textStyle: kBottomCenterButtonTextStyle,
                          ),
                          InkWell(
                            child: RawMaterialButton(
                              child: Icon(
                                FontAwesomeIcons.calculator,
                                color: Colors.white,
                                size: 30,
                              ),
                              onPressed: null,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25)),
                              fillColor: Colors.deepPurple.shade700,
                              elevation: 6,
                              constraints:
                              BoxConstraints.tightFor(width: 130.0, height: 60.0),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


