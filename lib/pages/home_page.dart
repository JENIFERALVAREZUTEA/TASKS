

import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
CollectionReference tasksReference =
FirebaseFirestore.instance.collection('tasks');

Stream<int> counter() async*{
  for (int i = 0 ;i <10; i++){
    yield i;
    await Future.delayed( const Duration(seconds: 2));
  }
}

Future <int> getNumber()async{
  return 1000;
}

  @override
  Widget build(BuildContext context) {

    counter().listen((event){
      print(event);
    });

    return Scaffold(
      appBar: AppBar(
        title: Text("Firebase Firestore"),
      ),
     body: StreamBuilder(
      stream: counter(),
      builder: (BuildContext context, AsyncSnapshot snapshot){
        if(snapshot.hasData){
          int data = snapshot.data;
         return Center(child: Text(data.toString(),style: TextStyle(fontSize: 50),),);
        }
        return Center(child: CircularProgressIndicator(),);
      },
     ),
    );
  }
}