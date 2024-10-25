import 'package:flutter/material.dart';

class TaskListItem extends StatefulWidget {
  const TaskListItem({super.key});

  @override
  State<TaskListItem> createState() => _TaskListItemState();
}

class _TaskListItemState extends State<TaskListItem> {
  final _textEditinController = TextEditingController();
  bool isCompleted = true;
  String taskname = "task 1";
  @override
  Widget build(BuildContext context) {
    _textEditinController.text = taskname;
    return Card(
      elevation: 4,
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 4),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: ListTile(
          leading: GestureDetector(
            onTap: () {
              setState(() {
                isCompleted = !isCompleted;
              });
            },
            child: Container(
              alignment: Alignment.center,
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.grey,
                ),
              ),
              child: Icon(
                Icons.check,
                color: isCompleted ? Colors.green : Colors.white,
                size: 32,
              ),
            ),
          ),
          title: isCompleted
              ? Text(
                  taskname,
                  style: TextStyle(decoration: TextDecoration.lineThrough),
                )
              : TextField(
                  controller: _textEditinController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                  onSubmitted: (value) {
                    setState(() {
                      taskname = value;
                    });
                  },
                ),
          trailing: Text("09 : 34 PM"),
        ),
      ),
    );
  }
}
