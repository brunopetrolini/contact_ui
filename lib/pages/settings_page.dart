import 'package:contact_ui/pages/detail_page.dart';
import 'package:contact_ui/widgets/contact_card.dart';
import 'package:contact_ui/widgets/custom_iconbutton.dart';
import 'package:contact_ui/widgets/suggestion_card.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Team",
          style: TextStyle(
            color: const Color(0xff2f2f55),
            fontWeight: FontWeight.w700,
            fontSize: 20,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 18),
            child: Center(
              child: CustomIconButton(
                buttonSize: 34,
                buttonColor: const Color(0xff6c5aee),
                iconData: EvaIcons.plus,
                iconColor: const Color(0xffffffff),
                iconSize: 24,
              ),
            ),
          ),
        ],
        bottom: PreferredSize(
          child: Container(
            height: 2,
            color: const Color(0xfff2f6f9),
          ),
          preferredSize: null,
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 36, top: 20),
              child: Text(
                "Suggestion invitation",
                style: TextStyle(
                  color: const Color(0xff75758f),
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
            ),
            SuggestionCard(name: "Angela Mark", mail: "angela@mark.eu"),
            Padding(
              padding: const EdgeInsets.only(left: 36, top: 20),
              child: Text(
                "Admin",
                style: TextStyle(
                  color: const Color(0xff75758f),
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
            ),
            ContactCard(
              heroTag: "donna",
              borderColor: const Color(0xffffffff),
              borderWidth: 1.5,
              statusSize: 18,
              avatarSize: 64,
              avatar: AssetImage("images/woman-first.jpg"),
              statusBgColor: Color(0xff53d575),
              statusIcon: EvaIcons.checkmark,
              name: "Donna Hicks",
              rule: "Admin",
              ocupation: "Finance & Admin",
            ),
            ContactCard(
              heroTag: "kathleen",
              borderColor: const Color(0xffffffff),
              borderWidth: 1.5,
              statusSize: 18,
              avatarSize: 64,
              avatar: AssetImage("images/woman-second.jpg"),
              statusBgColor: Color(0xff53d575),
              statusIcon: EvaIcons.checkmark,
              name: "Kathleen Harper",
              rule: "Admin",
              ocupation: "Management",
            ),
            Padding(
              padding: const EdgeInsets.only(left: 36, top: 20),
              child: Text(
                "Employee",
                style: TextStyle(
                  color: const Color(0xff75758f),
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
            ),
            ContactCard(
              heroTag: "mary",
              borderColor: const Color(0xffffffff),
              borderWidth: 1.5,
              statusSize: 18,
              avatarSize: 64,
              avatar: AssetImage("images/man.jpg"),
              statusBgColor: Color(0xffff9614),
              statusIcon: EvaIcons.refresh,
              name: "Mary Long",
              rule: "Employee",
              ocupation: "Marketing",
            ),
            ContactCard(
              heroTag: "victoria",
              borderColor: const Color(0xffffffff),
              borderWidth: 1.5,
              statusSize: 18,
              avatarSize: 64,
              avatar: AssetImage("images/woman-third.jpg"),
              statusBgColor: Color(0xff53d575),
              statusIcon: EvaIcons.checkmark,
              name: "Victoria Ferguson",
              rule: "Employee",
              ocupation: "Product",
              onCardTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => DetailPage(
                    avatar: AssetImage("images/woman-third.jpg"),
                    statusIcon: EvaIcons.checkmark,
                    statusBgColor: Color(0xff53d575),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
