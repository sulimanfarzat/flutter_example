import 'package:flutter/material.dart';


class ScaffoldBasics extends StatefulWidget {
  @override
  _ScaffoldBasicsState createState() => _ScaffoldBasicsState();
}


class _ScaffoldBasicsState extends State<ScaffoldBasics> {

  final usernamecontroller = new TextEditingController();
  var userName ="Kasem";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(


      endDrawer: new Drawer(child: new ListView(children: <Widget>[
        new DrawerHeader(
            child: new Text("Kasem Farzat")),
        new ListTile(
          onTap: (){},
          leading: new Icon(Icons.info),
          trailing: new Switch(value: true, onChanged: null),
          title: new Text("Flutter"),
          subtitle: new Text("using Dart"),
        ),
        new ListTile(
          onTap: (){},
          selected: true,
          leading: new Icon(Icons.info),
          trailing: new Switch(value: true, onChanged: null),
          title: new Text("Java"),
          subtitle: new Text("using Dart"),
        ),
        new ListTile(
          onTap: (){},
          selected: true,
          leading: new Icon(Icons.info),
          trailing: new Switch(value: true, onChanged: null),
          title: new Text("Java"),
          subtitle: new Text("using Dart"),
        ),
        new AboutListTile(
          aboutBoxChildren: <Widget>[
            new Text("just test Suliman")
          ],
            icon: new Icon(Icons.face), child: new Text("for my flutter corse"))
      ],),),


      backgroundColor: Colors.tealAccent,


      appBar: new AppBar(
        title: new Text("Scaffold demo"),
      ),


      body: new SingleChildScrollView(
        child: new Column(
          children: <Widget>[
            ButtonBar(
              // TODO: Add a beveled rectangular border to CANCEL (103)
              children: <Widget>[
                // TODO: Add buttons (101)
                FlatButton(
                  child: Text('CANCEL'),
                  onPressed: () {
                    // TODO: Clear the text fields (101)
                  },
                ),
                // TODO: Add a beveled rectangular border to NEXT (103)
                RaisedButton(
                  child: Text('NEXT'),
                  onPressed: () {
                    // TODO: Show the next page (101)
                  },
                ),
              ],
            ),

            new TextField(controller: usernamecontroller, onSubmitted: (txt){
              setState(() {
                userName = usernamecontroller.text;
              });
            },
            onChanged: (txt){
              setState(() {
                userName = usernamecontroller.text;
              });
            },),
            new InkWell(child: new Icon(Icons.edit), onTap: (){
              setState((){
                userName = usernamecontroller.text;
              });
            },),
            new Text("Hello ${userName}"),
            new Padding(padding: EdgeInsets.all(33.0)),

            new Card(child: new Container(height: 150.0, child: new TextField(controller: new TextEditingController(),),),),
            new Card(child: new Container(height: 150.0,),),
            new Card(child: new Container(height: 150.0,),),
            new Card(child: new Container(height: 150.0,),),
            new Card(child: new Container(height: 150.0, child: new FloatingActionButton(backgroundColor: Colors.amber, onPressed: null),),),
          ],
        ),
      ),


      floatingActionButton: new FloatingActionButton(onPressed: null),


      bottomNavigationBar: new BottomNavigationBar(items: <BottomNavigationBarItem>[
        new BottomNavigationBarItem(icon: new Icon(Icons.refresh),title: new Text("test")),
        new BottomNavigationBarItem(icon: new Icon(Icons.refresh),title: new Text("test")),
        new BottomNavigationBarItem(icon: new Icon(Icons.refresh),title: new Text("test")),
      ]),


      persistentFooterButtons: <Widget>[
        new FlatButton(onPressed: null, child: new Text("one")),
        new FlatButton(onPressed: null, child: new Text("tow-")),
        new FlatButton(onPressed: null, child: new Text("three")),
      ],


    );
  }
}
