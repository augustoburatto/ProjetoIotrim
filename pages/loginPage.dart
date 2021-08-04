import 'package:flutter/material.dart';
import 'package:iotrim/pages/alertGatePage.dart';
import 'package:iotrim/pages/homePage.dart';

import 'package:firebase_messaging/firebase_messaging.dart';

class LoginPage extends StatefulWidget {

  @override
  _LoginPage createState() => _LoginPage();

}

class _LoginPage extends State<LoginPage> {
  final FirebaseMessaging _messaging = FirebaseMessaging();


  @override
  void initState() {
    super.initState();
    _messaging.configure(
      onMessage: (message) async {
        final GlobalKey<NavigatorState> navigatorKey = new GlobalKey<NavigatorState>();
        new MaterialApp(
          title: 'MyApp',
          onGenerateRoute: null,
          navigatorKey: navigatorKey,
        );
        navigatorKey.currentState.pushNamed('/alertGatePage');
      } ,
      onResume: (message) async { 
        Navigator.push(null, MaterialPageRoute(builder: (BuildContext context) => HomePage()));
      }
    );
    _messaging.getToken().then((value) => print(value));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: Colors.white,
          padding: EdgeInsets.only(
              top: 60,
              left: 40,
              right: 40
          ),
          child: ListView(
            children: <Widget>[
            SizedBox(
              width: 128,
              height: 128,
    child: Image.asset("images/logo.png"),
    ),
    SizedBox(
    height: 20,
    ),
    TextFormField(
    keyboardType: TextInputType.text,
    autofocus: true,
    decoration: InputDecoration(
    labelText: "Username",
    labelStyle: TextStyle(
    color: Colors.orangeAccent,
    fontWeight: FontWeight.bold,
    fontSize: 20
    ),
    ),
    style: TextStyle(fontSize: 20),
    ),
    SizedBox(
    height: 20,
    ),
    TextFormField(
    keyboardType: TextInputType.text,
    autofocus: true,
    obscureText: true,
    decoration: InputDecoration(
    labelText: "Password",
    labelStyle: TextStyle(
                      color: Colors.orangeAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                  ),
              ),
            ),
            Container(
              height: 50,
              alignment: Alignment.centerRight,
              child: FlatButton(onPressed: () {}, child: Text("Reset password"),
            ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 60,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.3, 1],
                    colors: [
                      Colors.deepOrangeAccent,
                      Colors.deepOrange
                    ]
              ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: SizedBox.expand(
                child: FlatButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => HomePage()));
                },
                    child: Text("Login",
                      style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
                    )
                ),
              ),
            ),
            SizedBox(
                height: 30
            )
          ],
        ),
      )
    );
  }
}