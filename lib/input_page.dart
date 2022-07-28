import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const containerColor = Color(0xFF1D1E33);
const containerclickedColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColour = containerColor;
  Color femaleCardColour = containerColor;

  void updateColour(int gender) {
    if (gender == 1) {
      if (maleCardColour == containerColor) {
        maleCardColour = containerclickedColor;
        femaleCardColour = containerColor;
      } else {
        maleCardColour = containerColor;
      }
    }
    if (gender == 2) {
      if (femaleCardColour == containerColor) {
        femaleCardColour = containerclickedColor;
        maleCardColour = containerColor;
      } else {
        femaleCardColour = containerColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColour(1);
                      });
                      print('Male Card was pressed');
                    },
                    child: ReusableCard(
                      colour: maleCardColour,
                      cardChild: CardIcon(
                        icon: FontAwesomeIcons.mars,
                        text: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColour(2);
                      });
                      print('Female Card was pressed');
                    },
                    child: ReusableCard(
                      colour: femaleCardColour,
                      cardChild: CardIcon(
                          icon: FontAwesomeIcons.venus, text: 'FEMALE'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: ReusableCard(colour: containerColor)),
          Expanded(
            child: Row(
              children: [
                Expanded(child: ReusableCard(colour: containerColor)),
                Expanded(child: ReusableCard(colour: containerColor)),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}
