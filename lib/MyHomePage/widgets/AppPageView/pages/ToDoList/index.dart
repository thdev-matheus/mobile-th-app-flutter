import 'package:flutter/material.dart';
import 'package:th_app/MyHomePage/widgets/AppPageView/pages/ToDoList/widgets/TaskList.dart';
import 'package:th_app/MyHomePage/widgets/AppPageView/pages/ToDoList/widgets/ToDoForm.dart';
import 'package:th_app/MyHomePage/widgets/AppPageView/pages/ToDoList/widgets/ToDoHeader.dart';

class ToDoList extends StatefulWidget {
  const ToDoList({super.key});

  @override
  State<ToDoList> createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  TextEditingController textEditingController = TextEditingController();

  List<String> tasks = [];

  void addTask() {
    if (textEditingController.text.length > 0) {
      setState(() {
        tasks.add(textEditingController.text);
      });
      textEditingController.clear();
    }
  }

  void removeTask(int index) {
    setState(() {
      tasks.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const ToDoHeader(),
            ToDoForm(
              textEditingController: textEditingController,
              action: () {
                addTask();
              },
            ),
            TaskList(tasks: tasks, action: removeTask)
          ],
        ),
      ),
    );
  }
}
