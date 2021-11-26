import 'package:bmi/bottom_button.dart';
import 'package:bmi/constants.dart';
import 'package:flutter/material.dart';
import 'reuseablecard.dart';


class Results extends StatelessWidget {
  Results ({required this.interpretation, required this.bmiResult, required this.resultText});
  final String bmiResult;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                  'Your Result',style: kTitleTextStyle,),
            )
          ),
          Expanded(
            flex: 5 ,
            child: ReuseableCard(
              onPressed: (){},
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(resultText,style: kResultTextStyle ,),
                  Text(bmiResult,style: kBMITextStyle,),
                  Text(interpretation, style: kBodyTextStyle, textAlign: TextAlign.center,)
                ],
              ),
            ),
          ),
          BottomButton(
              onTap: (){
                Navigator.pop(context);
              },
              buttonTittle: "RE-CALCULATE"),
        ],
      ),
    );
  }
}
