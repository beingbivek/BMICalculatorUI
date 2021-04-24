import 'package:bmicalculator/components/constants.dart';
import 'package:bmicalculator/components/largebottombutton.dart';
import 'package:bmicalculator/components/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.bmiResult,
      @required this.interpretation,
      @required this.resultText});
  final String bmiResult, resultText, interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 20.0),
              child: Text(
                'Your Result',
                style: kResultText,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText,
                    style: kLabelTextStyle.copyWith(
                        fontWeight: FontWeight.w600, fontSize: 22.0),
                  ),
                  Text(
                    bmiResult,
                    style: kBottomContainerText.copyWith(fontSize: 100.0),
                  ),
                  Text(
                    interpretation.toUpperCase(),
                    style: kBottomContainerText.copyWith(
                        fontSize: 20.0, fontWeight: FontWeight.normal),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          LargeBottomContainerButton(
            largeText: 'RE-CALCULATE',
            onPress: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
