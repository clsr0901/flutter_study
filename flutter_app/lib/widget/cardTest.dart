import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardTest extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new CardTestState();
  }
}

class CardTestState extends State<CardTest> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Card(
      child: new Column(
        children: <Widget>[
          new ListTile(
            title: new Text(
              "title",
              style: new TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w600,
                  fontSize: 20.0),
            ),
            subtitle: new Text("subTitle"),
            leading: new Icon(
              Icons.restaurant_menu,
              color: Colors.greenAccent,
            ),
          ),
          new Divider(color: Colors.black,),
          new ListTile(
            title: new Text(
              '123466789',
              style: new TextStyle(
                  color: Colors.black38,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500),
            ),
            leading: new Icon(
              Icons.phone,
              color: Colors.red,
            ),
          ),
          new Divider(color: Colors.black,),
          new ListTile(
            title: new Text(
              "title",
              style: new TextStyle(color: Colors.black38, fontWeight: FontWeight.w600, fontSize: 20.0),
            ),
            subtitle: new Text("subTitle"),
            leading: new Icon(Icons.map, color: Colors.red,),
          ),
        ],
      ),
    );
  }
}
