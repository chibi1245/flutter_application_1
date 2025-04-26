import 'package:flutter/material.dart';

Widget myButton( VoidCallback action, {required label, color =Colors.green}){
  return MaterialButton(
   
    onPressed: action,
  color: color,
  minWidth: 500,
  child:Padding(padding: const EdgeInsets.all(8.0),
  
  child: Text(label),
  ),
  
  );
}