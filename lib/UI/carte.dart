import 'package:flutter/material.dart';


class Carte extends StatelessWidget{
  @override
  
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Row(
          children: <Widget>[
            new Icon(Icons.home),
            new Text('Suliman Flutter')
          ],
        ),
      ),

      body: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          myCustomCard("lernen ", Icons.book, myColor: Colors.green ),
          myCustomCard("Flutter ", Icons.favorite),
          myCustomCard("Arabic ", Icons.translate, myColor: Colors.amber),


        ],
    ),

    );
    }



  Card myCustomCard(String myText,IconData myIcon, {Color myColor: Colors.redAccent}) {
    return new Card(child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
            new Icon(myIcon, size: 50.0, color: myColor,),
            new Text(myText, style: new TextStyle(fontSize: 32.0),)
          ],),
    ),);
  }
}
