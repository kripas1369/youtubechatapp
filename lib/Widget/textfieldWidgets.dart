import 'package:flutter/material.dart';

InputDecoration customDecoration( String hintText){
  return InputDecoration(
    hintText: hintText,
    border: OutlineInputBorder( borderRadius: BorderRadius.circular(20)
    ),
  );
}