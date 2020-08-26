import 'package:flutter/material.dart';
import 'constants.dart';

class ReuableButtonCard extends StatefulWidget {
  final String label;
  final int buttonValue;
  final IconData icon1;
  final IconData icon2;
  ReuableButtonCard(
      {@required this.label,
      @required this.buttonValue,
      @required this.icon1,
      @required this.icon2});
  @override
  _ReuableButtonCardState createState() => _ReuableButtonCardState(
      label: label, buttonValue: buttonValue, icon1: icon1, icon2: icon2);
}

class _ReuableButtonCardState extends State<ReuableButtonCard> {
  final String label;
  int buttonValue;
  final IconData icon1;
  final IconData icon2;
  _ReuableButtonCardState(
      {@required this.label,
      @required this.buttonValue,
      @required this.icon1,
      @required this.icon2});
  int getSelectedValue() {
    return buttonValue;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          label,
          style: kLabelTextStyle,
        ),
        Row(
          textBaseline: TextBaseline.alphabetic,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          children: <Widget>[
            Text(
              buttonValue.toString(),
              style: klabelNumberStyle,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RoundedIconButton(
              icon: icon1,
              onPress: () {
                setState(() {
                  buttonValue--;
                });
              },
            ),
            SizedBox(
              width: 10.0,
            ),
            RoundedIconButton(
              icon: icon2,
              onPress: () {
                setState(() {
                  buttonValue++;
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}

class RoundedIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPress;
  RoundedIconButton({this.icon, this.onPress});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPress,
      elevation: 8.0,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(
        height: 46.0,
        width: 46.0,
      ),
    );
  }
}
