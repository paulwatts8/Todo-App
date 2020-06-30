import 'package:flutter/material.dart';
import 'package:todo_app/modules/uncompleteTasks.dart';

class TasksList extends StatefulWidget {
  TasksList({Key key}) : super(key: key);

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return Column(
       children: <Widget>[
         UncompleteTasks(),
         Divider(),
       ],
    );
  }
}