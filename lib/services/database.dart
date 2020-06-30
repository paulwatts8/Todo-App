import 'package:cloud_firestore/cloud_firestore.dart';

class Database {

//Firebase
CollectionReference tasksData = Firestore.instance.collection('todo');

//get tasks from Firestore
  getToll() async {
    return tasksData.snapshots();
  }
}
