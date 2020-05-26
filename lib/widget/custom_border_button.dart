
import 'package:flutter/material.dart';
class CustomBorderButtonWidget extends StatelessWidget {
  final borderColor;
  final textColor;
  final buttonColor;
  const CustomBorderButtonWidget({
    Key key,@required this.borderColor,@required this.textColor,@required this.buttonColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0.0),
          side: BorderSide(color: borderColor)),
      color: buttonColor,
      textColor: textColor,
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.only(top:15.0,bottom: 15.0),
        child: Text(
          "Pre Order",
          style: TextStyle(
            color: textColor,
            fontSize: 14.0,
            fontWeight: FontWeight.w500,
            letterSpacing: 1.0,
          ),
        ),
      ),
    );
  }
}