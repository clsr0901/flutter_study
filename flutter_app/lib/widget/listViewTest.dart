import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListViewTest extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new ListViewTestState();
  }

}

class ListViewTestState extends State<ListViewTest> {
  @override
  Widget build(BuildContext context) {
    Widget item =
      new ListTile(
        title: new Text("title",
          style: new TextStyle(color: Colors.blue, fontSize: 14.0, fontWeight: FontWeight.w500),
        ),
        subtitle: new Text("subtitle2"),
        leading: new Icon(Icons.theaters, color: Colors.red,size: 18.0,),
      );
    List<Widget> _buildListViewItem(int count){
      List<Widget> list = new List(count);
      list.fillRange(0, list.length, item);
      return list;
    }

    return new ListView(
      children: _buildListViewItem(30),
    );
  }

}