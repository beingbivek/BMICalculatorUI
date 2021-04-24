import 'package:flutter/material.dart';

import 'constants.dart';

class LargeBottomContainerButton extends StatelessWidget {
  LargeBottomContainerButton({@required this.largeText, this.onPress});
  final String largeText;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        color: kBottomContainerColour,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        alignment: Alignment.center,
        padding: EdgeInsets.only(bottom: 10.0),
        child: Text(
          largeText,
          style: kBottomContainerText,
        ),
      ),
    );
  }
}
