import 'package:flutter/material.dart';
import 'chatScreen.dart';

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Chat App"),
      ),
      body: chatScreen()
    );
  }
}