import 'package:News/shared_ui/drawer.dart';
import 'package:flutter/material.dart';

class twitterNews extends StatefulWidget {
  @override
  _twitterNewsState createState() => _twitterNewsState();
}

class _twitterNewsState extends State<twitterNews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Twitter News'),
        centerTitle: false,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
        ],
      ),
      drawer: NavigationDrawer(),
      body: ListView.builder(
        padding: EdgeInsets.all(8.0),
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              children: <Widget>[
                _CardHead(),
                _CardBody(),
                _DrawLine(),
                _CardFooter(),
              ],
            ),
          );
        },
        itemCount: 20,
      ),
    );
  }

  Widget _CardHead() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
      child: Row(
        children: <Widget>[
          CircleAvatar(
            backgroundImage: ExactAssetImage('image/placeHolder.png'),
            radius: 26,
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    'Mahmoud Ali',
                    style: TextStyle(
                      color: Colors.grey.shade900,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    '@mahmoud.geater3',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                "Fri, 12 may 2017 * 14.30",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _CardBody() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
      child: Container(
        child: Text(
          'Hi i will but api descrption here.and i put this text here to left asign to my self1.',
          style: TextStyle(
              color: Colors.grey.shade700,
              fontSize: 16,
              fontWeight: FontWeight.w600,
              height: 1.5),
        ),
      ),
    );
  }

  Widget _CardFooter() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              IconButton(
                  icon: Icon(
                    Icons.repeat,
                    size: 30,
                    color: Colors.orange.shade500,
                  ),
                  onPressed: () {}),
              Text(
                '25',
                style: TextStyle(
                  color: Colors.grey.shade500,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    'SHARE',
                    style: TextStyle(
                        color: Colors.orange.shade500,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    'OPEN',
                    style: TextStyle(
                        color: Colors.orange.shade500,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _DrawLine() {
    return Divider(
      height: 1,
      color: Colors.grey,
    );
  }
}
