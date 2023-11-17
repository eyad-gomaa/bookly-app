import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.childText,
    required this.textColor,
    required this.rightRadius,
    required this.leftRadius,
    required this.backGroundColor
  }) : super(key: key);
final String childText ;
final Color textColor;
final Color backGroundColor;
final Radius rightRadius ;
final Radius leftRadius ;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backGroundColor,
          shape:  RoundedRectangleBorder(
            borderRadius: BorderRadius.horizontal(left: leftRadius ,right: rightRadius),
          )
        ),
          onPressed: () {},
          child:  Text(childText,
            style: Styles.TextStyle20.copyWith(
              color: textColor,
                  fontWeight: FontWeight.w900
            ),
          ),
      ),
    );
  }
}
