import 'package:flutter/material.dart';

import 'constains.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.cardChild});
  final Color colour;
  final Widget cardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: colour,
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.icon, this.onTap});
  final IconData icon;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      splashColor: Color(0xFFEB1555),
      elevation: 10.0,
      onPressed: onTap,
      fillColor: Color(0xFF4C4F5E),
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
        height: 56.0,
        width: 56.0,
      ),
    );
  }
}

class ButtomButton extends StatelessWidget {
  ButtomButton({@required this.onPress, @required this.buttonLabel});
  final Function onPress;
  final String buttonLabel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        padding: EdgeInsets.only(bottom: 10),
        color: KButtomContainerColor,
        margin: EdgeInsets.only(top: 10),
        height: KButtomContainerHeight,
        width: double.infinity,
        child: Center(
          child: Text(
            buttonLabel,
            style: KButtomLabelTextStyle,
          ),
        ),
      ),
    );
  }
}
