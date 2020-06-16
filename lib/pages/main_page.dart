import 'package:contact_ui/pages/cards_page.dart';
import 'package:contact_ui/pages/history_page.dart';
import 'package:contact_ui/pages/requests_page.dart';
import 'package:contact_ui/pages/settings_page.dart';
import 'package:contact_ui/pages/transfers_page.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  PageController _controller;
  int _currentPage = 0;

  @override
  void initState() {
    _controller = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _controller,
        onPageChanged: (page) {
          setState(() {
            _currentPage = page;
          });
        },
        children: [
          HistoryPage(),
          TransfersPage(),
          RequestsPage(),
          CardsPage(),
          SettingsPage(),
        ],
      ),
      bottomNavigationBar: PreferredSize(
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(.1),
                blurRadius: 15,
                spreadRadius: 0,
                offset: const Offset(0, -2),
              ),
            ],
          ),
          child: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            onTap: (page) {
              setState(() {
                _controller.animateToPage(
                  page,
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeInOutQuint,
                );
              });
            },
            currentIndex: _currentPage,
            items: [
              BottomNavigationBarItem(
                icon: Icon(EvaIcons.book),
                title: Text("History"),
              ),
              BottomNavigationBarItem(
                icon: Icon(EvaIcons.navigation2),
                title: Text("Transfers"),
              ),
              BottomNavigationBarItem(
                icon: Icon(EvaIcons.info),
                title: Text("Requests"),
              ),
              BottomNavigationBarItem(
                icon: Icon(EvaIcons.creditCard),
                title: Text("Cards"),
              ),
              BottomNavigationBarItem(
                icon: Icon(EvaIcons.options2),
                title: Text("Settings"),
              ),
            ],
          ),
        ),
        preferredSize: null,
      ),
    );
  }
}
