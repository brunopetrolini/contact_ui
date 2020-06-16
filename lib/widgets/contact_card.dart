import 'package:contact_ui/widgets/avatar.dart';
import 'package:flutter/material.dart';

class ContactCard extends StatelessWidget {
  final AssetImage avatar;
  final Color statusBgColor;
  final IconData statusIcon;
  final String name;
  final String rule;
  final String ocupation;
  final VoidCallback onCardTap;
  final String heroTag;
  final double avatarSize;
  final Color borderColor;
  final double borderWidth;
  final double statusSize;

  const ContactCard({
    Key key,
    @required this.avatar,
    @required this.statusBgColor,
    @required this.statusIcon,
    @required this.name,
    @required this.rule,
    @required this.ocupation,
    @required this.heroTag,
    @required this.avatarSize,
    @required this.borderColor,
    @required this.borderWidth,
    @required this.statusSize,
    this.onCardTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(.1),
            blurRadius: 15,
            spreadRadius: 0,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: GestureDetector(
        onTap: onCardTap,
        child: Card(
          margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
          elevation: 0.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: Row(
              children: [
                Hero(
                  tag: heroTag,
                  child: ContactAvatar(
                    borderColor: borderColor,
                    borderWidth: borderWidth,
                    statusSize: statusSize,
                    avatarSize: avatarSize,
                    avatar: avatar,
                    statusBgColor: statusBgColor,
                    statusIcon: statusIcon,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          color: const Color(0xff2f2f55),
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        rule,
                        style: TextStyle(
                          color: const Color(0xff2f2f55),
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        ocupation,
                        style: TextStyle(
                          color: const Color(0xffb4b3b9),
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
