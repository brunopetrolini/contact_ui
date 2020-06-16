import 'package:flutter/material.dart';

class ContactAvatar extends StatelessWidget {
  final AssetImage avatar;
  final Color statusBgColor;
  final IconData statusIcon;
  final double avatarSize;
  final double statusSize;
  final double borderWidth;
  final Color borderColor;

  const ContactAvatar({
    Key key,
    @required this.avatar,
    @required this.statusBgColor,
    @required this.statusIcon,
    @required this.avatarSize,
    @required this.statusSize,
    @required this.borderWidth,
    @required this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          SizedBox(
            height: avatarSize,
            width: avatarSize,
            child: CircleAvatar(
              backgroundImage: avatar,
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Container(
              height: statusSize,
              width: statusSize,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: statusBgColor,
                border: Border.all(
                  color: borderColor,
                  width: borderWidth,
                ),
              ),
              child: Icon(
                statusIcon,
                color: const Color(0xffffffff),
                size: statusSize - 8,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
