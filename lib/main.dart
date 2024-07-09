import 'package:eventapp/Ui/Selection.dart';
import 'package:eventapp/binding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
              centerTitle: true,
              titleTextStyle: TextStyle(color: Colors.white, fontSize: 18),
              backgroundColor: Color.fromARGB(255, 175, 84, 191))),
      initialBinding: homebinding(),
      home: SelectionScreen(),
    );
  }
}
