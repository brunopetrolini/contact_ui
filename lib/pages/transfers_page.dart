import 'package:flutter/material.dart';

class TransfersPage extends StatefulWidget {
  @override
  _TransfersPageState createState() => _TransfersPageState();
}

class _TransfersPageState extends State<TransfersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Transfers",
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
        child: Text("Transfers Page"),
      ),
    );
  }
}
