import 'package:flutter/material.dart';

import 'Homescreen.dart';
import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "flutterverse week1",
      debugShowCheckedModeBanner: false,
      home: Homescreen(),
    );
  }
}
