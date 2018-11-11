import 'package:flutter/material.dart';
import 'dart:math';

class MyfulWidget extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyfulWidget> {
  List<String> PL=["Kotlin","Dart","C++","Java","Angular","PHP"];
  String plText="";
  void getText(){
    setState(() {
          plText= PL[new Random().nextInt(PL.length)];
        });
  }

  void incSize(){
    setState(() {
          txtSize++;
          myTextStyle = new TextStyle(fontSize: txtSize);
        });
  }
  static var txtSize = 16.0;
  var myTextStyle= new TextStyle(fontSize: txtSize);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      body: Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            InkWell(
              onTap: incSize,
              child: new Icon(Icons.add, size: 40.0,)),
            new Text("$plText", style: myTextStyle,),
            new RaisedButton(
              child: new Text("click", style: myTextStyle,),
              onPressed: getText, color: Colors.indigo)
          ],
        ),
      ),

      bottomNavigationBar: new BottomAppBar(
        color: Colors.amber,
        child: new Container(
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              new Text('Copyright', style: myTextStyle,),
              new Icon(Icons.copyright),
              new Text('2018', style: myTextStyle,)
            ],
          ),
        ),
      ),

      appBar: new AppBar(
        title: new Text('Randdom App', style: myTextStyle,),
      ),

    );
  }
}
