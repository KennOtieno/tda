// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tda/utilities/tda_tile.dart';
import 'package:tda/utilities/the_dialog_box.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // Text Controller
  final _controller = TextEditingController();

   // List of Tasks
  List toDoList = [
    ['Task 1', false],
    ['Task 2', false],
    ['Task 3', false],
  ];

  // CheckBox Changed Function
  void checkBoxChanged(bool? value, int index) {
    setState ((){
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  // Save New Task
  void saveNewTask() {
   setState( () {
    toDoList.add([_controller.text, false]);
    _controller.clear();
   });
   Navigator.of(context).pop();
  }

  // Created a 'Create New Task Function'
  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return TheDialogBox(
          controller: _controller,
          onSave: saveNewTask,
          onCancel: () => Navigator.of(context.pop),
        );
      },
    );
  }

  // Delete Task Function
  void deleteTask(int index) {
    setState(() {
      toDoList.removeAt(index);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
      appBar: AppBar(
        title: Text('T D A'),
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
      )
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index) {
          return TdaTile(
            taskName: toDoList[index][0],
            taskCompleted: toDoList[index][1],
            onChanged: (value) => checkBoxChanged(value, index),
            deleteFunction: (context) => deleteTask,
          );
        }
      ),
    );
  }
}
