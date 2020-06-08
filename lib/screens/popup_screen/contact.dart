import 'package:flutter/material.dart';

class contact_screen extends StatefulWidget {
  @override
  _contact_screenState createState() => _contact_screenState();
}

class _contact_screenState extends State<contact_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact'),
        centerTitle: false,
      ),
      body: Container(
        child: Center(child: Text('Contact')),
      ),
    );
  }
}
