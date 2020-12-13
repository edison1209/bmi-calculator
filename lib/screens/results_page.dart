import 'file:///C:/Users/mahes/Documents/flutter/bmi-calculator-flutter/lib/components/bottom_button.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/constant.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  ResultPage({this.bmi, this.result, this.interpretation});

  final String bmi;
  final String result;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('Your Result',
                style: TextStyle(fontSize: 45, fontWeight: FontWeight.w600)),
          ),
          Expanded(
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    result,
                    style: TextStyle(
                        color: Color(0xFF38CD7C),
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Text(
                    bmi,
                    style:
                        TextStyle(fontSize: 100, fontWeight: FontWeight.w900),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20, wordSpacing: 2),
                    ),
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
