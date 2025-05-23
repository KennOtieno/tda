// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TdaTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunction;

  TdaTile({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
    required this.deleteFunction,
    });
@override
Widget build(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(left:25.0, right:25, top: 25),
    child: Slidable(
      endActionPane: ActionPane(
        motion: const StretchMotion(),
        children: [
          SlidableActionPane(
            onPressed: deleteFunction,
            icon: Icons.delete,
            backgroundColor: Colors.red,
            borderRadius: BorderRadius.circular(12),
          )
        ]
        
      ),
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(color: Colors.blueGrey),
        child: Row(
          children: [
            // A CheckBox
            Checkbox(
              value: taskCompleted, 
              onChanged: onChanged,
              activeColor: Colors.black,
              ),
      
      
            // Task Name || Description
            Text(
              taskName,
              style: TextStyle(
                decoration: taskCompleted ? TextDecoration.lineThrough : TextDecoration.none,
              ),
              
              ),
          ],
              ),
        ),
      ),
    ),
  }
}
