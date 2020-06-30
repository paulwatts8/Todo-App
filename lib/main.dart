import 'package:flutter/material.dart';
import 'package:todo_app/screens/dashboard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            primaryColor: Color(0xFF5653F3), 
            accentColor: Color(0xFF221CF4),
            ),
        title: 'ToDo App',
        debugShowCheckedModeBanner: false,
        home: Dashboard(),
        routes: <String, WidgetBuilder>{
          '/dashboard': (BuildContext context) => new Dashboard(),
        });
  }
}
