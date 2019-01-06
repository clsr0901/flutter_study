import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StackTest extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new StackTestState();
  }
}

class StackTestState extends State<StackTest> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Stack(
      alignment: const Alignment(0.6, 0.6),
      children: <Widget>[
        new CircleAvatar(
          backgroundImage: AssetImage("images/sunrise.png"),
          radius: 100.0,
        ),
        new Container(
          decoration: new BoxDecoration(
            color: Colors.black38,
          ),
          child: new Text(
            "Mix B",
            style: new TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0),
          ),
        )
      ],
    );
  }
}
