import 'package:flutter/material.dart';
class AlertGatePage extends StatefulWidget {
  @override
  _AlertGatePage createState() => _AlertGatePage();
}

class _AlertGatePage extends State<AlertGatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("IOTrim"),
      ),
      body: SizedBox.expand(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
          Padding(padding: EdgeInsets.all(10), child: Text("Gate 1", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 26, ))),
          Divider(),
          Padding(padding: EdgeInsets.all(15), child: Text("asdasdasd", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14))),

          Padding(padding: EdgeInsets.all(15), child: Text("asdasdas", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14))),

          Padding(padding: EdgeInsets.all(15), child: Text("asdasda", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14))),

          Padding(padding: EdgeInsets.all(15), child: Text("asdas", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14))),

          Padding(padding: EdgeInsets.all(15), child: Text("", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14))),

],
)
)
);
}
}
