import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridViewTest extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new GridViewTestState();
  }
}

class GridViewTestState extends State<GridViewTest>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    List<Container> _buildGridTileList(int conunt){
      return new List<Container>.generate(conunt,
      (int index)=>
        new Container(child: new Center(
          child: Image.asset("images/sunrise.png"),
        ),
          color:
          Colors.black38,
        ),
      );
    }

    return GridView.extent(maxCrossAxisExtent: 150.0,
    padding: const EdgeInsets.all(4.0),
    mainAxisSpacing: 4.0,
    crossAxisSpacing: 4.0,
    children: _buildGridTileList(30));
  }

}