import 'package:bmi_calculator/bottom_button.dart';
import 'package:bmi_calculator/constant.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {

  ResultPage({@required this.resultBMI,@required this.resultText,@required this.interpretation});

  final String resultBMI;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI Calculator'),)
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch ,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Text(
                'Your Result',
                style: kResultTitleStyle,
              ),
            )
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: activeCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                   resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    resultBMI,
                    style: kBMIResultStyle,
                  ),
                  Text(
                    interpretation,
                    style: kResultBodyStyle,
                  )
                ],
              ),
              )
          ),
          BottomButton(
            onTap: (){
              Navigator.pop(context);
            }, 
            buttonText: 'Re Calculate'
            )
        ],
      )
    );
  }
}