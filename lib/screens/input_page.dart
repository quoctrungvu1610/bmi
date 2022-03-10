import 'package:flutter/material.dart';
import '../bottom_button.dart';
import '../constants.dart';
import '../icons_content.dart';
import '../reuseablecard.dart';
import '../round_icon_button.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'result_page.dart';


enum Gender{
  male,
  female
}
class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  // Color maleCardColour = inactiveCardColor;
  // Color femaleCardColour = inactiveCardColor;
  // Color maleIconColor = iconColor;
  // Color femaleIconColor = iconColor;
  Gender? selectedGender;
  int height = 180;
  int weight = 50;
  int age = 18;
  // void increaseWeight(){
  //   setState(() {
  //     weight++;
  //   });
  // }
  // void decreaseWeight(){
  //   setState(() {
  //     weight--;
  //   });
  // }

  //male = 1 female = 2
  // void updateColor(Gender gender){
  //   if(gender==Gender.male){
  //     if(maleCardColour==inactiveCardColor){
  //       maleCardColour=activeCardColor;
  //       maleIconColor = Colors.lightBlueAccent;
  //       femaleCardColour = inactiveCardColor;
  //       femaleIconColor = iconColor;
  //     }else{
  //       maleCardColour = inactiveCardColor;
  //       maleIconColor = iconColor;
  //     }
  //   }
  //   if(gender==Gender.female) {
  //     if (femaleCardColour == inactiveCardColor) {
  //       femaleCardColour = activeCardColor;
  //       femaleIconColor = Colors.pinkAccent;
  //       maleCardColour = inactiveCardColor;
  //       maleIconColor = iconColor;
  //     } else {
  //       femaleCardColour = inactiveCardColor;
  //       femaleIconColor = iconColor;
  //     }
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Row(
            children: [
              Expanded(
                child: ReuseableCard(
                  onPressed: (){
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  colour: selectedGender == Gender.male?kActiveCardColor:kInactiveCardColor,
                  cardChild:IconInside(icon: FontAwesomeIcons.mars,gender: "MALE",iconColor: selectedGender == Gender.male ? kMaleIconColor:kIconColor) ,),
              ),
              Expanded(
                child: ReuseableCard(
                  onPressed: (){
                   setState(() {
                     selectedGender = Gender.female;
                   });
                  },
                  colour: selectedGender == Gender.female?kActiveCardColor:kInactiveCardColor,
                  cardChild:IconInside(icon: FontAwesomeIcons.venus,gender: "FEMALE",iconColor: selectedGender == Gender.female ? kFemaleIconColor:kIconColor) ,
                )
              ),
            ],
          )),
          Expanded(
            child: ReuseableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("HEIGHT",style: kLabelTextStyle,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(height.toString(),style: kNumberTextStyle,
                       ),
                      Text("Cm", style: kLabelTextStyle,)
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      inactiveTrackColor: Color(0xFF8D8E98),
                      activeTrackColor: Colors.white,
                      thumbColor: Color(0xFF64FFDA),
                      overlayColor: Color(0x2964FFDA),
                      thumbShape:
                        RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                        RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 190.0,
                      activeColor: Colors.tealAccent,
                      inactiveColor: Colors.teal.shade800,
                      onChanged: (double newValue){
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
              onPressed: (){

              },
            ),
          ),
          Expanded(child: Row(
            children: [
              Expanded(
                child: ReuseableCard(colour: kActiveCardColor,
                  onPressed: (){},
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("WEIGHT",style: kLabelTextStyle,),
                      Text(weight.toString(),style: kNumberTextStyle,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:[
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPressed: (){
                              setState(() {
                                weight--;
                              });
                            },
                          ),
                          SizedBox(width: 10.0,),
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPressed: (){
                              setState(() {
                                weight++;
                              });
                            }),
                        ]
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ReuseableCard(colour: kActiveCardColor,onPressed: (){},
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("AGE",style: kLabelTextStyle,),
                      Text(age.toString(),style: kNumberTextStyle,),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: (){
                                setState(() {
                                  age--;
                                });
                              },),
                            SizedBox(width: 10.0,),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: (){
                                setState(() {
                                  age++;
                                });
                              },),
                          ]
                      )
                    ],
                  ),
                ),
              ),
            ],
          )),
          BottomButton(
              buttonTittle: "CALCULATE",
              onTap:(){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Results()));
              },),
        ],
      )
    );
  }
}






