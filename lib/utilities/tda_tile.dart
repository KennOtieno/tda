// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TdaTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;


  const TdaTile({
    super.key,
    required.taskName,
    required.taskCompleted,
    required.onChanged,
    });
}

@override
Widget build(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(left:25.0, right:25, top: 25),
    child: Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(color: Colors.blueGrey),
      borderRadius: BorderRadius.circular(13),
      child: Row(
        children: [
          // A CheckBox
          Checkbox(
            value: taskCompleted, 
            onChanged: onChanged,
            ),


          // Task Name || Description
          Text(taskName),
        ],
      ),
    ),
  );
}
