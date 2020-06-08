import 'package:News/screens/tabs_screen/favourites.dart';
import 'package:News/screens/tabs_screen/popular.dart';
import 'package:News/shared_ui/drawer.dart';
import 'package:News/shared_ui/popUpMenu.dart';
import 'package:flutter/material.dart';

class headline_news extends StatefulWidget {
  @override
  _headline_newsState createState() => _headline_newsState();
}

class _headline_newsState extends State<headline_news>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
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
              text: 'HEADLINE',
            ),
            Tab(
              text: 'POPULAR',
            ),
            Tab(
              text: 'FAVOURITES',
            ),
          ],
        ),
        title: Text('Headline News'),
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
          favourites(),
          popular(),
          favourites(),
        ],
      ),
    );
  }
}
