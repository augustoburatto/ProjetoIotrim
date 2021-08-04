import 'package:flutter/material.dart';
import 'package:iotrim/components/card.dart';
import 'package:iotrim/pages/gateBellPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("IOTrim"),
        actions: <Widget>[
          FlatButton.icon(
            onPressed: () {},
            icon: Icon(Icons.add, color: Colors.white),
            label: Text(
              "Add devices",
              style: TextStyle(color: Colors.white),
            ),
          ),
          FlatButton(
              onPressed: () {},
              child: Icon(
                Icons.help,
                color: Colors.white,
              )),
        ],
      ),
      body: GridView.count(
        padding: EdgeInsets.all(10),
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        primary: false,
        children: <Widget>[
          Card(
              child: newCard("Gate Bell", Icons.add_alert, () {
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => GateBellPage()));
              }),
              elevation: 4),
          Card(child: newCard("Tasks Alert", Icons.list, null), elevation: 4),
          Card(child: newCard("TV", Icons.tv, null), elevation: 4),
          Card(child: newCard("Cameras", Icons.videocam, null), elevation: 4),
          Card(
              child: newCard("Coffee Alert", Icons.free_breakfast, null),
              elevation: 4),
          Card(
              child: newCard("Food Alert", Icons.fastfood, null), elevation: 4),
          Card(
              child: newCard("Temperature", Icons.ac_unit, null), elevation: 4),
          Card(child: newCard("Music", Icons.music_note, null), elevation: 4),
          Card(
              child: newCard("Lights", Icons.lightbulb_outline, null),
              elevation: 4),
        ],
      ),
    );
  }
}
