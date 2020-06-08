import 'package:News/screens/tabs_screen/singlePost.dart';
import 'package:flutter/material.dart';

class popular extends StatefulWidget {
  @override
  _popularState createState() => _popularState();
}

class _popularState extends State<popular> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: 20,
        itemBuilder: (BuildContext context, index) {
          return Card(
            child: _topStoriesSingeRow(),
          );
        },
      ),
    );
  }

  Widget _topStoriesSingeRow() {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return singlePost();
        }));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            SizedBox(
              child: Image.asset(
                'image/placeHolder.png',
                fit: BoxFit.cover,
              ),
              height: 124,
              width: 124,
            ),
            SizedBox(
              width: 14,
            ),
            Expanded(
              child: Column(
                children: <Widget>[
                  Text(
                    'THE WORLD GLOBAL WARMING ANOMAL SUMMIING',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Mahmoud Ali'),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.timer,
                            color: Colors.grey,
                          ),
                          Text('15 min'),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
