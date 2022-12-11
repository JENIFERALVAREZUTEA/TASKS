import 'package:flutter/material.dart';

class TextFieldSearchWidget extends StatelessWidget {
  String hintText;
  IconData icon;

  TextFieldSearchWidget({
    required this.hintText,
    required this.icon});

  @override
  Widget build(BuildContext context) {
    return TextField( 
                        decoration: InputDecoration( 
                          prefixIcon: Icon(icon),
                          hintText: hintText,
                          hintStyle: TextStyle(fontSize:14.0,color: Color(0xff2C3550).withOpacity(0.6)),
                          filled: true,
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(14.0),
                           borderSide: BorderSide.none),
                          enabledBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(14.0),
                           borderSide: BorderSide.none),
      ),
    );
  }
}