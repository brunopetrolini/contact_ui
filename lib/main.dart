import 'package:contact_ui/pages/main_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contact UI',
      theme: ThemeData(
        primaryColor: const Color(0xff2f2f55),
        scaffoldBackgroundColor: const Color(0xfff9fafc),
        appBarTheme: AppBarTheme(
          brightness: Brightness.light,
          elevation: 0.0,
          color: const Color(0xfff9fafc),
          iconTheme: IconThemeData(color: const Color(0xff2f2f55)),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: const Color(0xffffffff),
          elevation: 0.0,
          selectedItemColor: const Color(0xff6c5aee),
          unselectedItemColor: const Color(0xffb4b3b9),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainPage(),
    );
  }
}
