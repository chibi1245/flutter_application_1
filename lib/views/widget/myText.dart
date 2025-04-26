 import 'package:flutter/material.dart';

myTextfield({hintText,icon,required controller} ){
  return TextField (controller: controller,
decoration:InputDecoration(
  hintText: hintText,
  //prefixIcon: icon,
  border: OutlineInputBorder( borderSide: BorderSide(color:Colors.blue)),

),
  );
 }
 
 