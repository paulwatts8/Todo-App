import 'package:flutter/material.dart';

class Tasks extends StatefulWidget {
  Tasks({Key key}) : super(key: key);

  @override
  _TasksState createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
        body: Column(
      children: <Widget>[
        Container(
          height: 200,
          width: double.infinity,
          color: Color(0xFF5653F3),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 80, 20, 10),
            child: Row(children: <Widget>[
              Text(
                "Title",
                style: TextStyle(color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),
              ),
              Spacer(),
              CircularProgressIndicator(
                backgroundColor: Color(0xFF221CF4),
                valueColor: AlwaysStoppedAnimation(Colors.white),
              )
            ]),
          ),
        ),
        Expanded(
          
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: IconButton(
                      icon: Icon(Icons.check_box_outline_blank),
                      onPressed: () {}),
                  subtitle: new Text(
                    'task $index',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                );
              }),
        )
      ],
    ));
  }
}
