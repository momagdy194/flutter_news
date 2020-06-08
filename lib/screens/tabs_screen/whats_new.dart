import 'package:News/screens/tabs_screen/singlePost.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class whatsnew extends StatefulWidget {
  @override
  _whatsnewState createState() => _whatsnewState();
}

class _whatsnewState extends State<whatsnew> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _drawHeader(),
          _drawTopStories(),
          _topRecentRow(),
        ],
      ),
    );
  }

  Widget _drawHeader() {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * .30,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('image/placeHolder.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'How Terriers & ROYALS GATECRASHED Final',
            style: TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 44),
            child: Text(
              'Hi i will but api descrption here.and i put this text here to left asign to my self1.',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: .5,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  Widget _drawTopStories() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 8,
          top: 8,
          right: 8,
        ),
        child: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return singlePost();
            }));
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _drawSectionTitle('Top Stroies'),
              _topStoriesSingeRow(),
              SizedBox(height: 4),
              _topStoriesSingeRow(),
              SizedBox(height: 4),
              _topStoriesSingeRow(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _topRecentRow() {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _drawSectionTitle('Top Recent'),
          _drawRecentBodySection(Colors.deepOrange),
          _drawRecentBodySection(Colors.deepPurpleAccent),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }

  Widget _topStoriesSingeRow() {
    return Card(
      child: Column(
        children: <Widget>[
          Padding(
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
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('Mhaoud Ali'),
                          Row(
                            children: <Widget>[
                              Icon(Icons.timer),
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
        ],
      ),
    );
  }

  Widget _drawSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8, left: 16, top: 12),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.grey.shade800,
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
      ),
    );
  }

  Widget _drawRecentBodySection(Color color) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return singlePost();
        }));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * .30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: ExactAssetImage('image/placeHolder.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 18, vertical: 4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: color,
                      ),
                      child: Text(
                        'SPORT',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'The City in Egypt that Loves British Hairstyle',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.blur_circular,
                          color: Colors.grey,
                        ),
                        Text(
                          '15 min',
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
