import 'package:flutter/material.dart';
import 'package:flutterverseone/ExtendedUI.dart';
import 'package:flutterverseone/HomeScreen.dart';
import 'package:flutterverseone/constants.dart';

void main() {
  runApp(RootWidget());
}

class RootWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => HomeScreen(),
        "/extended": (context) => ExtendedUi()
      },
    );
  }
}
