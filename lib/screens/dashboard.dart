import 'package:flutter/material.dart';
import 'package:todo_app/modules/uncompleteTasks.dart';
import 'package:todo_app/screens/addTask.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
                barrierDismissible: false,
                context: context,
                builder: (BuildContext context) {
                  return Dialog(
                    child: AddTasks(),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                  );
                });
          },
          child: Icon(Icons.add),
          backgroundColor: Color(0xFF221CF4),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: Column(
          children: <Widget>[
            Container(
              height: 200,
              width: double.infinity,
              color: Color(0xFF5653F3),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30, 90, 30, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Tasks",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat',
                          fontSize: 30),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          '13 Tasks done',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '|    4 Tasks pending',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    LinearProgressIndicator(
                      valueColor: AlwaysStoppedAnimation(Colors.white),
                      value: 1,
                      backgroundColor: Color(0xFF221CF4),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: UncompleteTasks(),
            )
          ],
        ));
  }
}
