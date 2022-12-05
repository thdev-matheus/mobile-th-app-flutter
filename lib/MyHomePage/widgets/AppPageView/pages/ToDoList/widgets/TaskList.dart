import 'package:flutter/material.dart';

class TaskList extends StatelessWidget {
  const TaskList({
    super.key,
    required this.tasks,
    required this.action,
  });

  final List<String> tasks;
  final action;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 15),
          child: const Text(
            "Para fazer",
            style: TextStyle(
              color: Color.fromRGBO(7, 153, 146, 1.0),
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          height: 400,
          margin: const EdgeInsets.only(top: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
          ),
          child: ListView.separated(
            separatorBuilder: (context, index) => const Divider(
              height: 2,
              color: Color.fromRGBO(7, 153, 146, 0.4),
              thickness: 2,
            ),
            itemCount: tasks.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(
                  tasks[index],
                  style: const TextStyle(
                    color: Color.fromRGBO(7, 153, 146, 1.0),
                    fontSize: 12,
                  ),
                ),
                onLongPress: () {
                  action(index);
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
