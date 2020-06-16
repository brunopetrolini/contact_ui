import 'package:flutter/material.dart';

class CardsPage extends StatefulWidget {
  @override
  _CardsPageState createState() => _CardsPageState();
}

class _CardsPageState extends State<CardsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Cards",
          style: TextStyle(
            color: const Color(0xff2f2f55),
            fontWeight: FontWeight.w700,
            fontSize: 20,
          ),
        ),
        bottom: PreferredSize(
          child: Container(
            height: 2,
            color: const Color(0xfff2f6f9),
          ),
          preferredSize: null,
        ),
      ),
      body: Center(
        child: Text("Cards Page"),
      ),
    );
  }
}
