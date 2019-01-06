import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DesignWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new DesignWidgetState();
  }
}

class DesignWidgetState extends State<DesignWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('布局练习'),
      ),
      body: new Column(
        children: <Widget>[
          new Image.asset(
            'images/sunrise.png',
            width: 600.0,
            height: 240.0,
            fit: BoxFit.cover,
          ),
          new TitleSection(),
          new TextSection(),
          new ButtonSection(),
        ],
      ),
    );
  }
}

class TitleSection extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new TitleSectionState();
  }
}

class TitleSectionState extends State<TitleSection> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Row(
        children: [
          new Expanded(
            flex: 5,
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Container(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: new Text(
                    'Oeschinen Lake Campground',
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                      color: Colors.black38,
                    ),
                  ),
                ),
                new Text(
                  'Kandersteg, Switzerland',
                  style: new TextStyle(
                    color: Colors.grey[500],
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
          new Icon(
            Icons.star,
            color: Colors.red,
          ),
          new Text(
            '41',
            style: new TextStyle(
              fontSize: 18.0,
              color: Colors.black38,
            ),
          ),
        ],
      ),
    );
    ;
  }
}

class ButtonSection extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new ButtonSectionState();
  }
}

class ButtonSectionState extends State<ButtonSection> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Column _buildButtonSection(IconData icon, String label) {
      Color color = Theme.of(context).primaryColor;
      return new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Icon(icon, color: color),
          new Container(
              margin: const EdgeInsets.only(top: 8.0),
              child: new Text(
                label,
                style: new TextStyle(
                  color: color,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400,
                ),
              ))
        ],
      );
    }

    return new Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildButtonSection(Icons.call, 'CALL'),
          _buildButtonSection(Icons.near_me, 'ROUTE'),
          _buildButtonSection(Icons.share, 'SHARE'),
        ],
      ),
    );
  }
}

class TextSection extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new TextSectionState();
  }
}

class TextSectionState extends State<TextSection> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      padding: EdgeInsets.all(32.0),
      child: new Text(
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. '
            'Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes.'
            ' A gondola ride from Kandersteg, followed by a half-hour walk through '
            'pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius '
            'in the summer. '
            'Activities enjoyed here include rowing, and riding the summer toboggan run.',
        softWrap: true,
        style: new TextStyle(
          fontSize: 12.0,
          color: Colors.black38,
        ),
      ),
    );
  }
}
