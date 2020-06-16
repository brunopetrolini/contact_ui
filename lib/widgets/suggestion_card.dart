import 'package:contact_ui/widgets/custom_iconbutton.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class SuggestionCard extends StatelessWidget {
  final String name;
  final String mail;

  const SuggestionCard({
    Key key,
    @required this.name,
    @required this.mail,
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
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
        elevation: 0.0,
        color: const Color(0xffffffff),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Row(
            children: [
              Expanded(
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
                      mail,
                      style: TextStyle(
                        color: const Color(0xffb4b3b9),
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  CustomIconButton(
                    buttonSize: 38,
                    buttonColor: const Color(0xfff2f6f9),
                    iconData: EvaIcons.close,
                    iconColor: const Color(0xfff54641),
                    iconSize: 24,
                  ),
                  SizedBox(width: 18),
                  CustomIconButton(
                    buttonSize: 38,
                    buttonColor: const Color(0xff53d575),
                    iconData: EvaIcons.checkmark,
                    iconColor: const Color(0xffffffff),
                    iconSize: 24,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
