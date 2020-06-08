import 'package:News/screens/popup_screen/about.dart';
import 'package:News/screens/popup_screen/contact.dart';
import 'package:News/screens/popup_screen/help.dart';
import 'package:News/screens/popup_screen/setting.dart';
import 'package:flutter/material.dart';

class popupMenu extends StatefulWidget {
  @override
  _popupMenuState createState() => _popupMenuState();
}

enum PopUpMenu { HELP, ABOUT, CONTACT, SETTING }

class _popupMenuState extends State<popupMenu> {
  @override
  Widget build(BuildContext context) {
    return _popUpMenu(context);
  }

  Widget _popUpMenu(BuildContext context) {
    return PopupMenuButton<PopUpMenu>(
      itemBuilder: (context) {
        return [
          PopupMenuItem<PopUpMenu>(
            value: PopUpMenu.ABOUT,
            child: Text(
              "ABOUT",
            ),
          ),
          PopupMenuItem<PopUpMenu>(
            value: PopUpMenu.CONTACT,
            child: Text(
              "CONTACT",
            ),
          ),
          PopupMenuItem<PopUpMenu>(
            value: PopUpMenu.HELP,
            child: Text(
              "HELP",
            ),
          ),
          PopupMenuItem<PopUpMenu>(
            value: PopUpMenu.SETTING,
            child: Text(
              "SETTING",
            ),
          ),
        ];
      },
      onSelected: (PopUpMenu menu) {
        switch (menu) {
          case PopUpMenu.ABOUT:
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return about_screen();
            }));
            break;
          case PopUpMenu.CONTACT:
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return contact_screen();
            }));
            break;
          case PopUpMenu.HELP:
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return help_screen();
            }));
            break;
          case PopUpMenu.SETTING:
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return setting_screen();
            }));
            break;
        }
      },
    );
  }
}
