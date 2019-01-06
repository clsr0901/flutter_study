import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter_app/design.dart';
import 'package:flutter_app/widget/cardTest.dart';
import 'package:flutter_app/widget/containerTest.dart';
import 'package:flutter_app/widget/gridViewTest.dart';
import 'package:flutter_app/widget/listViewTest.dart';
import 'package:flutter_app/widget/stackTest.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Welcome to Flutter',
        theme: new ThemeData(primaryColor: Colors.white),
        home: new Scaffold(
          appBar: new AppBar(
            title: new Text('Flutter 测试',
            style: new TextStyle(color: Theme.of(context).primaryColor),),
          ),
          body: new Center(
            child: new CardTest(),
          ),
        ));
  }
}

