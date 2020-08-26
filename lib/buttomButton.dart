import 'package:flutter/material.dart';
import 'constants.dart';

class ButtomButton extends StatelessWidget {
  ButtomButton({@required this.buttonTitle, @required this.onTap});

  final String buttonTitle;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
        color: kBottomButtonColour,
        height: kBottomButtonHeight,
        width: double.infinity,
        margin: EdgeInsets.only(top: kBottomButtonTopMargin),
      ),
    );
  }
}
