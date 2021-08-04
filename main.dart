import 'package:flutter/material.dart';
import 'package:iotrim/pages/loginPage.dart';
void main () => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IOTrim',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.deepOrangeAccent,
      ),
      home: LoginPage(),
    );
  }
}

