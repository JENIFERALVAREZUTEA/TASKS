

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

            ElevatedButton(
              onPressed: () {
              
              tasksReference.add(
                {
                "nombre": "Marleni",
                "Apellidos": "Ayma Letona",

              },
              ).then((DocumentReference value) {
                print(value.id);
              }).catchError ((error){
                print("Ocurrio un error en el registro");
              }).whenComplete((){
                print("El registro a terminado");
              });
            },
            child: Text(
              "Agregar documento",
            ),
            ),

            ElevatedButton(onPressed: (){
              tasksReference
              .doc("V9pmY0sCZ1ZG1QiALxJS")
              .update(
                {
                  "nombre":"Luz Maria",
                  "Apellidos":"Quispe Achahui",
                },
                )
              .catchError((error){
                print(error);
              },
              ).whenComplete(
                () {
                print("Actualizacion terminada");
                },
              );
            }, 
            child: Text(
              "Actualizar Documento"
              ),
              ),
          
            ElevatedButton(onPressed: (){
              
              tasksReference.doc("V9pmY0sCZ1ZG1QiALxJS").delete().catchError(
                (error){
                  print(error);
                },
              ).whenComplete((){
                print("La eliminacion esta completada");
              },
              );
            }, 
            child: Text(
              "Eliminar documento"
              )
              ),
         
            ElevatedButton(
              onPressed: (){
              tasksReference.doc("A0001").set(
                {
                  "nombre":"Paloma",
                  "Apellidos":"Portilla",
                },
                ).catchError((error)
                {
                  print("Creacion completada");
                });
            },
             child: Text("Agregar documento personalizado"
             )
             )
          ],
        ),
      ),
    );
  }
}