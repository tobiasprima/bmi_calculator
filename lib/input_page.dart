import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
const ContainerColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                  child: ReusableCard(colour: ContainerColor),
                ),
                Expanded(child: ReusableCard(colour: ContainerColor)),
              ],
            ),
          ),
          Expanded(child: ReusableCard(colour: ContainerColor)),
          Expanded(
            child: Row(
              children: [
                Expanded(child: ReusableCard(colour: ContainerColor)),
                Expanded(child: ReusableCard(colour: ContainerColor)),
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

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.colour, this.cardChild});

  final Color colour;
  final Widget? cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      color: colour,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
