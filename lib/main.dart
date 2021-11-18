import 'package:flutter/material.dart';
import 'package:flutter_umbrella_ui/screens/umberlla_ui_home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UmbrellaUIHome(),
    );
  }
}
