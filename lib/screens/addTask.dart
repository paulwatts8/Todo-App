import 'package:flutter/material.dart';
import 'package:todo_app/widgets/customButton.dart';
import 'package:todo_app/widgets/customTextField.dart';

class AddTasks extends StatefulWidget {
  AddTasks({Key key}) : super(key: key);

  @override
  _AddTasksState createState() => _AddTasksState();
}

class _AddTasksState extends State<AddTasks> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Center(
              child: Text(
            'Add New Task',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          )),
          SizedBox(
            height: 24,
          ),
          CustomTextField(labelText: 'Enter Task'),
        //   SizedBox(
        //     height: 10,
        //   ),
        //  CustomTextField(labelText: 'Enter Task details ( Optional)'),
          SizedBox(
            height: 24,
          ),
          _actionButton(context)
        ],
      ),
    );
  }

  Row _actionButton(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        CustomButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          buttonText: 'Close',
        ),
        CustomButton(
          onPressed: () {},
          buttonText: 'Add',
          textColor: Colors.white,
          color: Theme.of(context).accentColor,
        )
      ],
    );
  }
}
