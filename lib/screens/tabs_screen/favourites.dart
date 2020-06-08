import 'dart:math';

import 'package:News/screens/tabs_screen/singlePost.dart';
import 'package:flutter/material.dart';

class favourites extends StatefulWidget {
  @override
  _favouritesState createState() => _favouritesState();
}

class _favouritesState extends State<favourites> {
  List<Color> colorList = [
    Colors.blue,
    Colors.deepPurple,
    Colors.green,
    Colors.teal,
    Colors.pink,
  ];

  Random random = Random();

  Color _getRandomColor() {
    return colorList[random.nextInt(colorList.length)];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: 20,
        itemBuilder: (BuildContext context, index) {
          return Card(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return singlePost();
                    },
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: <Widget>[
                    _authorRow(),
                    SizedBox(height: 16),
                    _newsItemRow(),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _authorRow() {
    return Row(
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
                        color: _getRandomColor(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        IconButton(
            icon: Icon(
              Icons.bookmark_border,
              size: 26,
              color: Colors.grey,
            ),
            onPressed: () {})
      ],
    );
  }

  Widget _newsItemRow() {
    return Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(right: 12),
          width: 124,
          height: 124,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: ExactAssetImage('image/placeHolder.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Tech Tent:Old phones and safe social',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 12),
              Text(
                'Hi i will but api descrption here.and i put this text here to left asign to my self1.',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  height: 1.5,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
