import 'dart:core';

import 'package:News/screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_view_indicator/page_view_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../model/onbording_model.dart';

class onbording extends StatefulWidget {
  @override
  _onbordingState createState() => _onbordingState();
}

class _onbordingState extends State<onbording> {
  List<PageModel> pages;

  ValueNotifier<int> _pageViewNotifier = ValueNotifier(0);

  void _addPages() {
    pages = List<PageModel>();

    pages.add(PageModel(
        'Welcome1',
        'image/wb1.png',
        'Hi i will but api descrption here.and i put this text here to left asign to my self1.',
        Icons.favorite));
    pages.add(PageModel(
        'Welcome2',
        'image/wb2.png',
        'Hi i will but api descrption here.and i put this text here to left asign to my self1.',
        Icons.ac_unit));
    pages.add(PageModel(
        'Welcome3',
        'image/wb3.png',
        'Hi i will but api descrption here.and i put this text here to left asign to my self1.',
        Icons.person));
    pages.add(PageModel(
        'Welcome4',
        'image/wb4.png',
        'Hi i will but api descrption here.and i put this text here to left asign to my self1.',
        Icons.timer));
  }

  @override
  Widget build(BuildContext context) {
    _addPages();

    return Stack(
      children: <Widget>[
        Scaffold(
          body: PageView.builder(
            onPageChanged: (index) {
              _pageViewNotifier.value = index;
            },
            itemCount: pages.length,
            itemBuilder: (context, index) {
              return Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(pages[index].image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Transform.translate(
                          child: Icon(
                            pages[index].icons,
                            size: 80,
                            color: Colors.orange.shade900,
                          ),
                          offset: Offset(0, -40),
                        ),
                        Text(
                          pages[index].title,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 34,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 48, right: 48, top: 18),
                          child: Text(
                            pages[index].description,
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                                letterSpacing: .5),
                            softWrap: true,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
        Transform.translate(
          offset: Offset(0, 175),
          child: Align(
            alignment: Alignment.center,
            child: _displayPageIndicators(4),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 14),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * .9,
              height: 40,
              child: RaisedButton(
                color: Colors.orange.shade700,
                child: Text(
                  'Get STARTED',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    letterSpacing: 1,
                  ),
                ),
                onPressed: () {
                  _updateSeen();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return homeScreen();
                      },
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _displayPageIndicators(int index) {
    return PageViewIndicator(
      pageIndexNotifier: _pageViewNotifier,
      length: index,
      normalBuilder: (animationController, index) => Circle(
        size: 8.0,
        color: Colors.grey,
      ),
      highlightedBuilder: (animationController, index) => ScaleTransition(
        scale: CurvedAnimation(
          parent: animationController,
          curve: Curves.ease,
        ),
        child: Circle(
          size: 12.0,
          color: Colors.orange.shade700,
        ),
      ),
    );
  }

  void _updateSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('seen', true);
  }
}
