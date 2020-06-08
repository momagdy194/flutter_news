import 'package:News/model/drawerMenu.dart';
import 'package:News/screens/facebook_news.dart';
import 'package:News/screens/headline_News.dart';
import 'package:News/screens/home_screen.dart';
import 'package:News/screens/instgram_news.dart';
import 'package:News/screens/singnin_screens/login.dart';
import 'package:News/screens/singnin_screens/logout.dart';
import 'package:News/screens/twitter_news.dart';
import 'package:flutter/material.dart';

class NavigationDrawer extends StatefulWidget {
  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  static bool isLoggedIn = true;

  List<DrawerMenuModel> drawerMenuItem = [
    DrawerMenuModel('Explore', () => homeScreen()),
    DrawerMenuModel('Headline news', () => headline_news()),
    DrawerMenuModel('Twitter news', () => twitterNews()),
    DrawerMenuModel('Instagram news', () => InstagramNews()),
    DrawerMenuModel('Facebook news', () => FacebookNews()),

    //DrawerMenuModel('Login', () => loginScreen()),
    //DrawerMenuModel('Register', () => registerScreen()),
    //DrawerMenuModel('Logout', () => logoutScreen()),

    (isLoggedIn)
        ? DrawerMenuModel('Login', () => loginScreen())
        : DrawerMenuModel('Logout', () => logoutScreen()),
  ];

//  @override
//  void initState() {
//    super.initState();
//    if (isLoggedIn) {
//      drawerMenuItem.add(DrawerMenuModel('Logout', () => logoutScreen()));
//    }
//
//    Timer(Duration(seconds: 5), () {
//      setState(() {
//        isLoggedIn = true;
//        print('done');
//      });
//    });
//  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(top: 75, left: 20),
        child: ListView.builder(
          itemCount: drawerMenuItem.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text(
                  drawerMenuItem[index].title,
                  style: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 20,
                  ),
                ),
                trailing: Icon(
                  Icons.chevron_right,
                  color: Colors.grey.shade400,
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return drawerMenuItem[index].destination();
                    }),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
