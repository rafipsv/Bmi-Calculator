import 'package:bmi_calculator/constains.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {@required this.resultText,
      @required this.bmiResult,
      @required this.opiniontext});
  final String resultText;
  final String bmiResult;
  final String opiniontext;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("BMI CALCULATOR"),
        ),
        backgroundColor: kAppBarColor,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(
                15.0,
              ),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Your Result",
                style: KTittleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: KactiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText,
                    style: KResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: KBMITextStyle,
                  ),
                  Text(
                    opiniontext,
                    textAlign: TextAlign.center,
                    style: KBMIResultStyle,
                  ),
                ],
              ),
            ),
          ),
          ButtomButton(
              onPress: () {
                Navigator.pop(context);
              },
              buttonLabel: "RE-CALCULATE"),
        ],
      ),
    );
  }
}
