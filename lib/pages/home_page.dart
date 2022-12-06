

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
CollectionReference tasksReference =FirebaseFirestore.instance.collection('tasks');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Firebase Firestore"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
              tasksReference.get().then((value){
               // QuerySnapshot collection = value;
                //List<QueryDocumentSnapshot> docs = collection.docs;
                //QueryDocumentSnapshot doc = docs[0];
               // print(doc.id);
               // print(doc.data());
               QuerySnapshot collection = value;
               collection.docs.forEach((element) {
               // print(element.data());
               Map<String,dynamic> myMap = element.data() as Map<String,dynamic>;
               print(myMap["nombre"]);
               });
              }
              );
              },
              child: Text(
                "Obtener la data"
              ),
            
              ),
          ],
        ),
      ),
    );
  }
}