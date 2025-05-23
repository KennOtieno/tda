// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tda/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // This widget is the root of my app. I can't explain this, but it just works!
    throw UnimplementedError();
  }
}

@override
Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
    theme: ThemeData(primarySwatch: Colors.blueGrey),
  );
}
