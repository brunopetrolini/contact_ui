import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final double buttonSize;
  final Color buttonColor;
  final IconData iconData;
  final Color iconColor;
  final double iconSize;

  const CustomIconButton({
    Key key,
    @required this.buttonSize,
    @required this.buttonColor,
    @required this.iconData,
    @required this.iconColor,
    @required this.iconSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: buttonSize,
      width: buttonSize,
      child: ClipOval(
        child: Material(
          color: buttonColor,
          child: InkWell(
            onTap: () {},
            child: Icon(
              iconData,
              color: iconColor,
              size: iconSize,
            ),
          ),
        ),
      ),
    );
  }
}
