import 'package:device_info/device_info.dart';
import 'package:flutter/material.dart';

class pack_device extends StatefulWidget {
  @override
  _pack_deviceState createState() => _pack_deviceState();
}

class _pack_deviceState extends State<pack_device> {

  String info="";
  getDeviceInfo() async{
    DeviceInfoPlugin deviceInfo = new DeviceInfoPlugin();
    AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
    var brand = androidInfo.id;
    setState(() {
      info = brand;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new RaisedButton(onPressed: getDeviceInfo, child: new Text('device Info')),
            new Text(info)
          ],
        )
      ), 
    );
  }
}
