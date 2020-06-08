import 'package:flutter/material.dart';

class help_screen extends StatefulWidget {
  @override
  _help_screenState createState() => _help_screenState();
}

class _help_screenState extends State<help_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help'),
        centerTitle: false,
      ),
      body: Container(
        child: Center(child: Text('Help')),
      ),
    );
  }
}
