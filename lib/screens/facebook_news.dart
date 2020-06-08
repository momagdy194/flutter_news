import 'package:News/shared_ui/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FacebookNews extends StatefulWidget {
  @override
  _FacebookNewsState createState() => _FacebookNewsState();
}

class _FacebookNewsState extends State<FacebookNews> {
  List<int> ids = List<int>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Facebook News'),
        centerTitle: false,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
        ],
      ),
      drawer: NavigationDrawer(),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _drawHeader(index),
                  _drawTitle(),
                  _drawHashTags(),
                  _drawBody(),
                  _drawFooter(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _drawHeader(index) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 8),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: ExactAssetImage('image/placeHolder.png'),
                    fit: BoxFit.cover,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Mahmoud Grater',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade700,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: <Widget>[
                      Text(
                        '15 min - ',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        'LifeStyle',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: <Widget>[
              IconButton(
                  icon: Icon(
                    Icons.favorite,
                    size: 26,
                    color: (ids.contains(index)) ? Colors.red : Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      (ids.contains(index))
                          ? ids.remove(index)
                          : ids.add(index);
                    });
                  }),
              Transform.translate(
                offset: Offset(-8, 0),
                child: Text(
                  '25',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _drawTitle() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      child: Text(
        'We also talk about the future of work as the robots.',
        style: TextStyle(fontSize: 16),
      ),
    );
  }

  Widget _drawHashTags() {
    return Container(
      child: Wrap(
        children: <Widget>[
          FlatButton(
            padding: EdgeInsets.all(0),
            onPressed: () {},
            child: Text(
              '#Advance',
              style: TextStyle(color: Colors.orange.shade500),
            ),
          ),
          FlatButton(
            padding: EdgeInsets.all(0),
            onPressed: () {},
            child: Text(
              '#Advance',
              style: TextStyle(color: Colors.orange.shade500),
            ),
          ),
          FlatButton(
            padding: EdgeInsets.all(0),
            onPressed: () {},
            child: Text(
              '#Advance',
              style: TextStyle(color: Colors.orange.shade500),
            ),
          ),
        ],
      ),
    );
  }

  Widget _drawBody() {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * .30,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: ExactAssetImage('image/placeHolder.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _drawFooter() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            '10COMMENTS',
            style: TextStyle(
              color: Colors.orange.shade500,
            ),
          ),
          Row(
            children: <Widget>[
              FlatButton(
                padding: EdgeInsets.all(0),
                child: Text(
                  'SHARE',
                  style: TextStyle(
                    color: Colors.orange.shade500,
                  ),
                ),
                onPressed: () {},
              ),
              FlatButton(
                padding: EdgeInsets.all(0),
                child: Text(
                  'OPEN',
                  style: TextStyle(
                    color: Colors.orange.shade500,
                  ),
                ),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
