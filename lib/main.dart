import 'package:flutter/material.dart';
import 'homePage.dart';

void main()=> runApp(chatApp());

class chatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ChatApp",
      theme: ThemeData(primarySwatch: Colors.green),
      home: homePage(),
    );
  }
}