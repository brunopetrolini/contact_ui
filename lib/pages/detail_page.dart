import 'package:contact_ui/widgets/avatar.dart';
import 'package:contact_ui/widgets/custom_iconbutton.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  final AssetImage avatar;
  final Color statusBgColor;
  final IconData statusIcon;

  const DetailPage(
      {Key key,
      @required this.avatar,
      @required this.statusBgColor,
      @required this.statusIcon})
      : super(key: key);

  @override
  _DetailPageState createState() =>
      _DetailPageState(statusBgColor, statusIcon, avatar);
}

class _DetailPageState extends State<DetailPage> {
  final AssetImage avatar;
  final Color statusBgColor;
  final IconData statusIcon;

  _DetailPageState(this.statusBgColor, this.statusIcon, this.avatar);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          FlatButton(
            onPressed: () {},
            child: Text(
              "Revoke",
              style: TextStyle(
                color: const Color(0xffff9614),
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 400,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      height: 340,
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
                        margin: const EdgeInsets.symmetric(horizontal: 18),
                        elevation: 0.0,
                        color: const Color(0xffffffff),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(18, 70, 18, 18),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                "Victoria Ferguson",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: const Color(0xff2f2f55),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 22,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "victoria@ferguson.eu",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: const Color(0xffb4b3b9),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(height: 40),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "Role",
                                        style: TextStyle(
                                          color: const Color(0xffb4b3b9),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                        ),
                                      ),
                                      SizedBox(height: 6),
                                      Row(
                                        children: [
                                          Text(
                                            "Employee",
                                            style: TextStyle(
                                              color: const Color(0xff2f2f55),
                                              fontWeight: FontWeight.w600,
                                              fontSize: 18,
                                            ),
                                          ),
                                          SizedBox(width: 6),
                                          Icon(
                                            EvaIcons.editOutline,
                                            color: const Color(0xff2f2f55),
                                            size: 20,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Container(
                                    height: 45,
                                    width: 2,
                                    color: const Color(0xfff2f6f9),
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "Team",
                                        style: TextStyle(
                                          color: const Color(0xffb4b3b9),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                        ),
                                      ),
                                      SizedBox(height: 6),
                                      Row(
                                        children: [
                                          Text(
                                            "Product",
                                            style: TextStyle(
                                              color: const Color(0xff2f2f55),
                                              fontWeight: FontWeight.w600,
                                              fontSize: 18,
                                            ),
                                          ),
                                          SizedBox(width: 6),
                                          Icon(
                                            EvaIcons.editOutline,
                                            color: const Color(0xff2f2f55),
                                            size: 20,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 40),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  CustomIconButton(
                                    buttonSize: 47,
                                    buttonColor: const Color(0xff6c5aee),
                                    iconData: EvaIcons.email,
                                    iconColor: const Color(0xffffffff),
                                    iconSize: 24,
                                  ),
                                  CustomIconButton(
                                    buttonSize: 47,
                                    buttonColor: const Color(0xff068efe),
                                    iconData: EvaIcons.messageCircle,
                                    iconColor: const Color(0xffffffff),
                                    iconSize: 24,
                                  ),
                                  CustomIconButton(
                                    buttonSize: 47,
                                    buttonColor: const Color(0xff53d575),
                                    iconData: EvaIcons.phone,
                                    iconColor: const Color(0xffffffff),
                                    iconSize: 24,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: MediaQuery.of(context).size.width / 2 - 60,
                      child: Hero(
                        tag: "victoria",
                        child: ContactAvatar(
                          borderColor: const Color(0xfff9fafc),
                          statusSize: 28,
                          borderWidth: 2.5,
                          avatarSize: 120,
                          avatar: avatar,
                          statusBgColor: statusBgColor,
                          statusIcon: statusIcon,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 38),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Address",
                      style: TextStyle(
                        color: const Color(0xffb4b3b9),
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 6),
                    Text(
                      "99 Meadow City",
                      style: TextStyle(
                        color: const Color(0xff2f2f55),
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 18),
                    Text(
                      "Zip code",
                      style: TextStyle(
                        color: const Color(0xffb4b3b9),
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 6),
                    Text(
                      "60584-3274",
                      style: TextStyle(
                        color: const Color(0xff2f2f55),
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 18),
                    Text(
                      "City",
                      style: TextStyle(
                        color: const Color(0xffb4b3b9),
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 6),
                    Text(
                      "San Francisco",
                      style: TextStyle(
                        color: const Color(0xff2f2f55),
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 18),
                    Text(
                      "Country",
                      style: TextStyle(
                        color: const Color(0xffb4b3b9),
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 6),
                    Text(
                      "United States of America",
                      style: TextStyle(
                        color: const Color(0xff2f2f55),
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
