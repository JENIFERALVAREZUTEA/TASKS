
import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tasks/ui/widgets/textfield_search_widget.dart';

import '../ui/general/colors.dart';
import '../ui/widgets/general_widget.dart';

class HomePage extends StatelessWidget {
  CollectionReference tasksReference =
      FirebaseFirestore.instance.collection('tasks');



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF4F6FF),
        floatingActionButton: InkWell(
          onTap: () {
          },
          borderRadius: BorderRadius.circular(14.0),
          child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14.0),
                  color: kBrandPrymaryColor),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  Text(
                    "Ingresar datos",
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                ],
              )),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 22.0),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(18.0),
                    bottomLeft: Radius.circular(18.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 12,
                      offset: const Offset(4, 4),
                    )
                  ],
                ),
                child: SafeArea(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Bienvenido",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff2c3550),
                          ),
                        ),
                        divider6(),
                        Text(
                          "DATE",
                          style: TextStyle(
                            fontSize: 36.0,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff2c3550),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.05),
                                blurRadius: 12,
                                offset: const Offset(4, 4),
                              ),
                            ],
                          ),
                          child: TextFieldSearchWidget(
                            icon: Icons.search,
                            hintText: "Buscar datos",
                          ),
                        ),
                      ]),
                ),
              ),
              Text("Todos los datos",
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w600,
                color: kBrandPrymaryColor.withOpacity(0.85),
              ),
              ),
              Container(
                child: Column(
                children: [
                    Text("Un dato puede ser un carácter leıdo de un teclado, ",),
                   Text("Un dato puede ser un carácter leıdo de un teclado, ",),
                ],
                
                ),
              ),
              divider10(),
         
            ],
          ),
        )

        /* body: StreamBuilder(
      stream: tasksReference.snapshots(),
      builder: (BuildContext context, AsyncSnapshot snap){
        if(snap.hasData){
          QuerySnapshot collection = snap.data;
          List<QueryDocumentSnapshot> docs = collection.docs;
          List<Map<String,dynamic>> docsMap = docs.map((e) => e.data() as Map< String,dynamic>).toList();
          print(docsMap);
          return ListView.builder(
            itemCount: docsMap.length,
            itemBuilder: (BuildContext context, int index){
              return ListTile(
                title: Text(docsMap[index]["nombre"]),
              );
            },
          );
        }

        return Center(child: CircularProgressIndicator(),);
      },
     ),*/
        );
  }
}
