// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TdaTile extends StatelessWidget {
  const TdaTile({super.key});
}

@override
Widget build(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(27.0),
    child: Container(
      padding: const EdgeInsets.all(24),
      child: Row(
        children: [
          // A CheckBox
          Checkbox(value: value, onChanged: onChanged)


          // Task Name / Description
          Text('Prepare a List'),
        ],
      ),
      decoration: BoxDecoration(color: Colors.blueGrey),
      borderRadius: BorderRadius.circular(13),
    ),
  );
}
