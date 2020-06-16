import 'package:flutter/material.dart';

class RequestsPage extends StatefulWidget {
  @override
  _RequestsPageState createState() => _RequestsPageState();
}

class _RequestsPageState extends State<RequestsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Requests",
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
        child: Text("Requests Page"),
      ),
    );
  }
}
