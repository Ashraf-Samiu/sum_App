import 'package:flutter/material.dart';
// ignore_for_file: non_constant_identifier_names

InputDecoration AppInputStyle(label){
  return InputDecoration(
    contentPadding: const EdgeInsets.fromLTRB(20, 10, 10, 20),
    filled: true,
    fillColor: Colors.white,
    border: const OutlineInputBorder(),
    label: Text(label)
  );
}
TextStyle HeadLineTextStyle(){
  return const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w800
  );
}
ButtonStyle AppButtonStyle(){
  return ElevatedButton.styleFrom(
    padding: const EdgeInsets.all(20),
    backgroundColor: Colors.green,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(5)
      )
    )
  );
}