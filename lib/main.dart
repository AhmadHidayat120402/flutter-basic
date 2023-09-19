import 'package:flutter/material.dart';
import 'package:testapp/checkbox.dart';
// import 'package:testapp/radioButton.dart';
// import 'package:testapp/inputButton3.dart';
// import 'package:testapp/inputController.dart';
// import 'package:testapp/switchButton.dart';
// import 'package:testapp/switchbutton2.dart';
// import 'package:testapp/dropdowm2.dart';
// import 'package:testapp/inputbutton.dart';
// import 'package:testapp/inputbutton2.dart';
// import 'package:testapp/button.dart';
// import 'package:testapp/dropdown.dart';
// import 'package:testapp/columntest.dart';
// import 'package:testapp/rowTest.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Checkbuttons());
  }
}
