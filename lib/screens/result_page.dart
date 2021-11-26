import 'package:bmi/constants.dart';
import 'package:flutter/material.dart';
import 'reuseablecard.dart';
class Results extends StatelessWidget {
  const Results({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child: Text(''
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
                  Text('Normal',style: kResultTextStyle ,),
                  Text('18.3',style: kBMITextStyle,),
                  Text('Your BMI result is quite low, you should eat more', style: kBodyTextStyle, textAlign: TextAlign.center,)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
