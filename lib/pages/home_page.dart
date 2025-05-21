// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tda/utilities/tda_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
      appBar: AppBar(
        title: Text('T D A'),
        elevation: 0,
      ),
      body: ListView(
        children: [
          TdaTile(),
        ],
      ),
    );
  }
}
