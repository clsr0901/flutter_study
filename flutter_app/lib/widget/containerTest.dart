import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerTest extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new ContainerTestState();
  }

}

class ContainerTestState extends State<ContainerTest>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var container = new Container(
      decoration: new BoxDecoration(
        color: Colors.black26,
      ),
      child: new Column(
        children: <Widget>[
          new Row(
            children: <Widget>[
              new Expanded(
                  child: new Container(
                    decoration: new BoxDecoration(
                      border: new Border.all(color: Colors.black38, width: 10.0),
                      borderRadius: const BorderRadius.all(const Radius.circular(8.0)),
                    ),
                    margin: EdgeInsets.all(4.0),
                    child: new Image.asset('images/sunrise.png'),
                  ),
              ),
              new Expanded(child: new Container(
                decoration: new BoxDecoration(
                  border: new Border.all(color: Colors.black38, width: 10.0),
                  borderRadius: const BorderRadius.all(const Radius.circular(8.0)),
                ),
                margin: const EdgeInsets.all(4.0),
                child: Image.asset("images/sunrise.png"),
              )),
              new Expanded(child: new Container(
                decoration: new BoxDecoration(
                  border: new Border.all(color: Colors.black38, width: 10.0),
                  borderRadius: const BorderRadius.all(const Radius.circular(8.0)),
                ),
                margin: const EdgeInsets.all(4.0),
                child: Image.asset('images/sunrise.png'),
              ))
            ],
          ),
        ],
      ),
    );
    return container;
  }

}