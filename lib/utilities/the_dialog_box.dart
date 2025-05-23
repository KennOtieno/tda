import 'package:flutter/material.dart';

class TheDialogBox extends StatelessWidget {
  const TheDialogBox({super.key});
}

@override
Widget build (BuildContext context) {
  return AlertDialog(
    backgroundColor: Colors.blueGrey,
    content: Container(
      height: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // A Text Field o get User Input
          TextField(
            decoration: InputDecoration(
              hintText: 'Create a New Task',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
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
              Buttons(context 
              text: 'Save',
              onPressed: () {
                // Save the Task
              })

              // Cancel Button
               Buttons(context 
              text: 'Cancel',
              onPressed: () {
                // Cancel the Task
              })
            ]
          )

        ]
      )
    )
  );
}