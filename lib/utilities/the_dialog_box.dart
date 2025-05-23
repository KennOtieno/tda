import 'package:flutter/material.dart';
import 'package:tda/utilities/buttons.dart';

class TheDialogBox extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final controller;
  final VoidCallback onSave;
  final VoidCallback onCancel;

  const TheDialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
    });
}

@override
Widget build (BuildContext context) {
  return AlertDialog(
    backgroundColor: Colors.blueGrey,
    content: SizedBox(
      height: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // A Text Field o get User Input
          TextField(
            controller: controller,
            decoration: InputDecoration(
              hintText: 'Create a New Task',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(
                  color: Colors.white,
                  width: 2,
                )
              )
            ),
          ),

          // A Save and Cancel Button
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // Save Button
              Button(text: "Save", onPressed: onSave),

              // Space Between The 2 Buttons
              const SizedBox(width: 8,),

              // Cancel Button
               Button(text: "Cancel", onPressed: onCancel),
            ],
          )

        ]
      )
    )
  );
}