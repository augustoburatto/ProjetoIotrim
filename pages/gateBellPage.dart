import 'package:flutter/material.dart';

class GateBellPage extends StatefulWidget {
  @override
  _GateBellPage createState() => _GateBellPage();
}

class _GateBellPage extends State<GateBellPage> {
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
        crossAxisCount: 1,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        primary: false,
        children: <Widget>[
          Card(
              child: SizedBox.expand(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(padding: EdgeInsets.all(10), child: Text("Gate 1", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 26, ))),
                    Divider(),
                    Padding(padding: EdgeInsets.all(15), child: Text("This gate is ACTIVE", style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 14))),
                    Padding(padding: EdgeInsets.all(15), child: Text("Av. Rudge, 315 \nBom Retiro, São Paulo", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14))),
                    Padding(padding: EdgeInsets.all(15), child: Text("", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14))),
                    Padding(padding: EdgeInsets.all(15), child: Text("To send messages to device, you need to configure the messages.", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14))),
                    Padding(
                        padding: EdgeInsets.only(left: 15, top: 2, right: 15, bottom: 15),
                        child: RaisedButton(
                            onPressed: null,
                            child: Text("Send a message", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14)),
                            disabledColor: Colors.grey
                        ),
                    ),
                  ],
                )
              ),
              elevation: 4),
        ],
      ),
    );
  }
}
