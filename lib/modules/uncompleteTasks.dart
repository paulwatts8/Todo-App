import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/services/database.dart';

class UncompleteTasks extends StatefulWidget {
  UncompleteTasks({Key key}) : super(key: key);

  @override
  _UncompleteTasksState createState() => _UncompleteTasksState();
}

class _UncompleteTasksState extends State<UncompleteTasks> {
  Database db = new Database();
  var tasks;

  @override
  void initState() {
    db.getToll().then((results) {
      setState(() {
        tasks = results;
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (tasks != null) {
      return StreamBuilder<QuerySnapshot>(
          stream: tasks,
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return Center(child: Text('No Current Tasks'));
            } else {
              return ListView.builder(
                  itemCount: snapshot.data.documents.length,
                  itemBuilder: (context, i) {
                    return new ListTile(
                      leading: Icon(
                        Icons.check_box_outline_blank,
                        color: Colors.green,
                      ),
                      title: new Text(snapshot.data.documents[i].data['Task'],
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat',
                              color: Colors.grey)),
                    );
                  });
            }
          });
    } else {
      return Center(child: Text('No Current Tasks'));
    }
  }
}
