import 'package:News/screens/tabs_screen/favourites.dart';
import 'package:News/screens/tabs_screen/popular.dart';
import 'package:News/screens/tabs_screen/whats_new.dart';
import 'package:News/shared_ui/drawer.dart';
import 'package:News/shared_ui/popUpMenu.dart';
import 'package:flutter/material.dart';

class homeScreen extends StatefulWidget {
  @override
  _homeScreenState createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(
        bottom: TabBar(
          indicatorColor: Colors.white,
          controller: _tabController,
          tabs: [
            Tab(
              text: 'WHAT,S NEW',
            ),
            Tab(
              text: 'POPULAR',
            ),
            Tab(
              text: 'FAVOURITES',
            ),
          ],
        ),
        title: Text('Explore'),
        centerTitle: false,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          popupMenu(),
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          whatsnew(),
          popular(),
          favourites(),
        ],
      ),
    );
  }
}
